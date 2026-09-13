<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Nexus — minimalist · daily · quality</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Outfit:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
  <style>
    * { margin:0; padding:0; box-sizing:border-box; }
    :root {
      --bg: #0b0b0f; --bg-alt: #12121a; --surface: #17171f; --border: #26262f;
      --text: #ecedef; --text-dim: #9a9aa6; --accent: #7c5cff; --accent-2: #4dd4ff;
      --radius: 16px; --shadow: 0 20px 60px rgba(0,0,0,0.45);
      --transition: 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    }
    html { scroll-behavior: smooth; }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg); color: var(--text); line-height: 1.6;
      -webkit-font-smoothing: antialiased; overflow-x: hidden;
    }
    h1, h2, h3, h4 { font-family: 'Outfit', sans-serif; line-height: 1.15; letter-spacing: -0.02em; }
    a { color: inherit; text-decoration: none; }
    img { max-width: 100%; display: block; }
    body::before {
      content: ""; position: fixed; inset: 0;
      background: radial-gradient(600px 400px at 15% 10%, rgba(124,92,255,0.18), transparent 70%),
                  radial-gradient(700px 500px at 85% 20%, rgba(77,212,255,0.12), transparent 70%);
      pointer-events: none; z-index: 0;
    }
    /* NAV */
    .nav { position: sticky; top: 0; z-index: 100; backdrop-filter: blur(14px);
           -webkit-backdrop-filter: blur(14px); background: rgba(11,11,15,0.72); border-bottom: 1px solid var(--border); }
    .nav-inner { max-width: 1200px; margin: 0 auto; padding: 1rem 1.5rem;
                 display: flex; align-items: center; justify-content: space-between; }
    .logo { font-family: 'Outfit', sans-serif; font-weight: 700; font-size: 1.35rem;
            letter-spacing: -0.03em; display: flex; align-items: center; gap: 0.55rem; }
    .logo-mark { width: 30px; height: 30px; border-radius: 9px;
                 background: linear-gradient(135deg, var(--accent), var(--accent-2));
                 display: grid; place-items: center; color: #fff; font-size: 0.85rem;
                 box-shadow: 0 6px 20px rgba(124,92,255,0.4); }
    .nav-links { display: flex; gap: 2rem; list-style: none; font-size: 0.9rem; font-weight: 500; }
    .nav-links a { color: var(--text-dim); transition: color var(--transition); position: relative; }
    .nav-links a:hover { color: var(--text); }
    .nav-links a::after { content: ""; position: absolute; left: 0; bottom: -6px;
                          width: 0; height: 2px; background: linear-gradient(90deg, var(--accent), var(--accent-2));
                          transition: width var(--transition); border-radius: 2px; }
    .nav-links a:hover::after { width: 100%; }
    .nav-cta { display: inline-flex; align-items: center; gap: 0.5rem; padding: 0.6rem 1.15rem;
               font-size: 0.85rem; font-weight: 600; border-radius: 999px;
               background: linear-gradient(135deg, var(--accent), var(--accent-2));
               color: #fff; transition: transform var(--transition), box-shadow var(--transition); }
    .nav-cta:hover { transform: translateY(-2px); box-shadow: 0 10px 26px rgba(124,92,255,0.45); }
    .menu-toggle { display: none; background: none; border: none; color: var(--text);
                   font-size: 1.25rem; cursor: pointer; padding: 0.5rem; }
    /* HERO */
    .hero { position: relative; z-index: 1; max-width: 1200px; margin: 0 auto;
            padding: 6rem 1.5rem 5rem; text-align: center; }
    .badge { display: inline-flex; align-items: center; gap: 0.5rem; padding: 0.4rem 0.95rem;
             border-radius: 999px; border: 1px solid var(--border); background: var(--surface);
             font-size: 0.78rem; color: var(--text-dim); margin-bottom: 1.8rem;
             animation: fadeUp 0.7s ease both; }
    .badge .dot { width: 7px; height: 7px; border-radius: 50%; background: #4ade80;
                  box-shadow: 0 0 10px #4ade80; animation: pulse 2s infinite; }
    .hero h1 { font-size: clamp(2.5rem, 6vw, 4.5rem); font-weight: 700;
               margin-bottom: 1.4rem; animation: fadeUp 0.7s 0.1s ease both; }
    .gradient-text { background: linear-gradient(135deg, var(--accent) 0%, var(--accent-2) 100%);
                     -webkit-background-clip: text; background-clip: text; -webkit-text-fill-color: transparent; }
    .hero p { max-width: 620px; margin: 0 auto 2.6rem; color: var(--text-dim);
              font-size: 1.08rem; animation: fadeUp 0.7s 0.2s ease both; }
    .hero-actions { display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap;
                    animation: fadeUp 0.7s 0.3s ease both; }
    .btn { display: inline-flex; align-items: center; gap: 0.6rem; padding: 0.9rem 1.7rem;
           border-radius: 999px; font-weight: 600; font-size: 0.95rem; cursor: pointer;
           border: 1px solid transparent; transition: all var(--transition); font-family: inherit; }
    .btn-primary { background: linear-gradient(135deg, var(--accent), var(--accent-2));
                   color: #fff; box-shadow: 0 10px 30px rgba(124,92,255,0.35); }
    .btn-primary:hover { transform: translateY(-3px); box-shadow: 0 16px 40px rgba(124,92,255,0.5); }
    .btn-ghost { background: transparent; border-color: var(--border); color: var(--text); }
    .btn-ghost:hover { background: var(--surface); border-color: #3a3a48; transform: translateY(-3px); }
    /* SECTIONS */
    .section { position: relative; z-index: 1; max-width: 1200px; margin: 0 auto; padding: 5rem 1.5rem; }
    .section-head { text-align: center; margin-bottom: 3.5rem; }
    .section-head .eyebrow { font-size: 0.8rem; font-weight: 600; letter-spacing: 0.15em;
                             text-transform: uppercase; color: var(--accent-2); margin-bottom: 0.8rem; }
    .section-head h2 { font-size: clamp(1.9rem, 4vw, 2.8rem); margin-bottom: 0.9rem; }
    .section-head p { color: var(--text-dim); max-width: 520px; margin: 0 auto; }
    .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 1.5rem; }
    .card { background: linear-gradient(180deg, var(--surface), var(--bg-alt));
            border: 1px solid var(--border); border-radius: var(--radius); padding: 2rem 1.75rem;
            transition: all var(--transition); position: relative; overflow: hidden; }
    .card::before { content: ""; position: absolute; top: 0; left: 0; right: 0; height: 1px;
                    background: linear-gradient(90deg, transparent, rgba(124,92,255,0.6), transparent);
                    opacity: 0; transition: opacity var(--transition); }
    .card:hover { transform: translateY(-6px); border-color: #35354a; box-shadow: var(--shadow); }
    .card:hover::before { opacity: 1; }
    .card-icon { width: 48px; height: 48px; border-radius: 13px; display: grid;
                 place-items: center; font-size: 1.15rem; color: #fff;
                 background: linear-gradient(135deg, rgba(124,92,255,0.9), rgba(77,212,255,0.75));
                 margin-bottom: 1.3rem; box-shadow: 0 8px 22px rgba(124,92,255,0.28); }
    .card h3 { font-size: 1.15rem; margin-bottom: 0.6rem; font-weight: 600; }
    .card p { color: var(--text-dim); font-size: 0.92rem; }
    /* STATS */
    .stats { position: relative; z-index: 1; max-width: 1200px; margin: 0 auto;
             padding: 0 1.5rem 4rem; display: grid;
             grid-template-columns: repeat(auto-fit, minmax(160px, 1fr)); gap: 1.5rem; text-align: center; }
    .stat-num { font-family: 'Outfit', sans-serif; font-size: clamp(1.8rem, 4vw, 2.6rem);
                font-weight: 700; background: linear-gradient(135deg, var(--accent), var(--accent-2));
                -webkit-background-clip: text; background-clip: text; -webkit-text-fill-color: transparent; }
    .stat-label { font-size: 0.85rem; color: var(--text-dim); margin-top: 0.25rem; }
    /* CTA */
    .cta-box { position: relative; z-index: 1; max-width: 1000px; margin: 2rem auto 5rem;
               padding: 3.5rem 2rem; border-radius: 24px; text-align: center;
               background: radial-gradient(500px 260px at 50% 0%, rgba(124,92,255,0.22), transparent 70%),
                           linear-gradient(180deg, var(--surface), var(--bg-alt));
               border: 1px solid var(--border); }
    .cta-box h2 { font-size: clamp(1.7rem, 3.5vw, 2.4rem); margin-bottom: 0.9rem; }
    .cta-box p { color: var(--text-dim); max-width: 480px; margin: 0 auto 2rem; }
    /* FOOTER */
    footer { position: relative; z-index: 1; border-top: 1px solid var(--border); background: var(--bg-alt); }
    .footer-inner { max-width: 1200px; margin: 0 auto; padding: 3rem 1.5rem 2rem;
                    display: flex; flex-wrap: wrap; gap: 2rem; justify-content: space-between; }
    .footer-brand { max-width: 280px; }
    .footer-brand p { color: var(--text-dim); font-size: 0.88rem; margin-top: 0.8rem; }
    .socials { display: flex; gap: 0.75rem; margin-top: 1.2rem; }
    .socials a { width: 38px; height: 38px; border-radius: 10px; border: 1px solid var(--border);
                 display: grid; place-items: center; color: var(--text-dim); transition: all var(--transition); }
    .socials a:hover { color: #fff; border-color: var(--accent);
                       background: rgba(124,92,255,0.12); transform: translateY(-3px); }
    .footer-cols { display: flex; gap: 4rem; flex-wrap: wrap; }
    .footer-col h4 { font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.08em;
                     margin-bottom: 1rem; color: var(--text); }
    .footer-col ul { list-style: none; display: grid; gap: 0.6rem; }
    .footer-col a { color: var(--text-dim); font-size: 0.88rem; transition: color var(--transition); }
    .footer-col a:hover { color: var(--accent-2); }
    .footer-bottom { border-top: 1px solid var(--border); text-align: center;
                     padding: 1.4rem; font-size: 0.8rem; color: var(--text-dim); }
    /* ANIMATIONS */
    @keyframes fadeUp { from { opacity: 0; transform: translateY(24px); }
                        to { opacity: 1; transform: translateY(0); } }
    @keyframes pulse { 0%, 100% { opacity: 1; } 50% { opacity: 0.4; } }
    .reveal { opacity: 0; transform: translateY(30px);
              transition: opacity 0.7s ease, transform 0.7s ease; }
    .reveal.visible { opacity: 1; transform: translateY(0); }
    /* RESPONSIVE */
    @media (max-width: 820px) {
      .nav-links { display: none; } .menu-toggle { display: block; }
      .nav-links.open { display: flex; flex-direction: column; position: absolute;
                        top: 100%; left: 0; right: 0; background: var(--bg-alt);
                        border-bottom: 1px solid var(--border); padding: 1.5rem; gap: 1.2rem; }
      .footer-cols { gap: 2.5rem; }
    }
    @media (max-width: 520px) {
      .hero { padding: 4rem 1.25rem 3rem; }
      .section { padding: 3.5rem 1.25rem; }
      .footer-inner { flex-direction: column; }
    }
  </style>
</head>
<body>

  <!-- NAV -->
  <nav class="nav" aria-label="Main navigation">
    <div class="nav-inner">
      <a href="#" class="logo" aria-label="Nexus home">
        <span class="logo-mark"><i class="fa-solid fa-bolt" aria-hidden="true"></i></span>
        Nexus
      </a>
      <ul class="nav-links" id="navLinks">
        <li><a href="#features">Features</a></li>
        <li><a href="#stats">Stats</a></li>
        <li><a href="#cta">Pricing</a></li>
        <li><a href="#footer">Docs</a></li>
      </ul>
      <div style="display:flex; align-items:center; gap:0.75rem;">
        <a href="#cta" class="nav-cta">
          Get Started <i class="fa-solid fa-arrow-right" aria-hidden="true"></i>
        </a>
        <!-- FIX: Added visible text via aria-label AND sr-only span for screen readers -->
        <button class="menu-toggle" id="menuToggle" aria-label="Toggle navigation menu">
          <i class="fa-solid fa-bars" aria-hidden="true"></i>
        </button>
      </div>
    </div>
  </nav>

  <!-- HERO -->
  <header class="hero">
    <div class="badge">
      <span class="dot" aria-hidden="true"></span> Now in public beta
    </div>
    <h1>
      Minimalist tools for<br>
      <span class="gradient-text">daily quality work.</span>
    </h1>
    <p>
      Nexus brings clarity to your workflow — a fast, elegant platform built for
      makers who care about craft, focus, and shipping great things every day.
    </p>
    <div class="hero-actions">
      <a href="#cta" class="btn btn-primary">
        Start free <i class="fa-solid fa-arrow-right" aria-hidden="true"></i>
      </a>
      <a href="#features" class="btn btn-ghost">
        <i class="fa-regular fa-circle-play" aria-hidden="true"></i> See how it works
      </a>
    </div>
  </header>

  <!-- FEATURES -->
  <section class="section" id="features" aria-labelledby="features-heading">
    <div class="section-head reveal">
      <div class="eyebrow">Why Nexus</div>
      <h2 id="features-heading">Everything you need. Nothing you don't.</h2>
      <p>Purpose-built features that remove friction and keep you in flow.</p>
    </div>

    <div class="grid">
      <article class="card reveal">
        <div class="card-icon"><i class="fa-solid fa-gauge-high" aria-hidden="true"></i></div>
        <h3>Blazing Fast</h3>
        <p>Sub-second load times and buttery-smooth interactions across every device.</p>
      </article>
      <article class="card reveal">
        <div class="card-icon"><i class="fa-solid fa-shield-halved" aria-hidden="true"></i></div>
        <h3>Secure by Default</h3>
        <p>End-to-end encryption and enterprise-grade security baked into the core.</p>
      </article>
      <article class="card reveal">
        <div class="card-icon"><i class="fa-solid fa-wand-magic-sparkles" aria-hidden="true"></i></div>
        <h3>Smart Automation</h3>
        <p>Let intelligent workflows handle the busywork while you focus on ideas.</p>
      </article>
      <article class="card reveal">
        <div class="card-icon"><i class="fa-solid fa-mobile-screen" aria-hidden="true"></i></div>
        <h3>Truly Responsive</h3>
        <p>A flawless experience from widescreen desktop to the smallest phone.</p>
      </article>
      <article class="card reveal">
        <div class="card-icon"><i class="fa-solid fa-code-branch" aria-hidden="true"></i></div>
        <h3>Open API</h3>
        <p>Extend and integrate with a clean, well-documented developer API.</p>
      </article>
      <article class="card reveal">
        <div class="card-icon"><i class="fa-solid fa-headset" aria-hidden="true"></i></div>
        <h3>Human Support</h3>
        <p>Real people, real answers — support that actually helps you ship.</p>
      </article>
    </div>
  </section>

  <!-- STATS -->
  <section class="stats" id="stats" aria-label="Key statistics">
    <div class="reveal">
      <div class="stat-num">99.9%</div>
      <div class="stat-label">Uptime SLA</div>
    </div>
    <div class="reveal">
      <div class="stat-num">12k+</div>
      <div class="stat-label">Active Makers</div>
    </div>
    <div class="reveal">
      <div class="stat-num">4.9/5</div>
      <div class="stat-label">Average Rating</div>
    </div>
    <div class="reveal">
      <div class="stat-num">48ms</div>
      <div class="stat-label">Avg. Response</div>
    </div>
  </section>

  <!-- CTA -->
  <section class="cta-box reveal" id="cta" aria-labelledby="cta-heading">
    <h2 id="cta-heading">Ready to build something great?</h2>
    <p>Join thousands of makers already shipping better work with Nexus.</p>
    <div class="hero-actions" style="animation:none;">
      <a href="#" class="btn btn-primary">
        Get started free <i class="fa-solid fa-arrow-right" aria-hidden="true"></i>
      </a>
      <a href="#" class="btn btn-ghost">Talk to sales</a>
    </div>
  </section>

  <!-- FOOTER -->
  <footer id="footer">
    <div class="footer-inner">
      <div class="footer-brand">
        <!-- FIX: Added href="#" to anchor (Web:S6844 requires href on <a>) -->
        <a href="#" class="logo" aria-label="Nexus home">
          <span class="logo-mark"><i class="fa-solid fa-bolt" aria-hidden="true"></i></span>
          Nexus
        </a>
        <p>Minimalist tools for daily quality work. Built with care for makers everywhere.</p>
        <div class="socials">
          <a href="#" aria-label="Twitter"><i class="fa-brands fa-x-twitter" aria-hidden="true"></i></a>
          <a href="#" aria-label="GitHub"><i class="fa-brands fa-github" aria-hidden="true"></i></a>
          <a href="#" aria-label="Discord"><i class="fa-brands fa-discord" aria-hidden="true"></i></a>
          <a href="#" aria-label="LinkedIn"><i class="fa-brands fa-linkedin-in" aria-hidden="true"></i></a>
        </div>
      </div>

      <div class="footer-cols">
        <div class="footer-col">
          <h4>Product</h4>
          <ul>
            <li><a href="#">Features</a></li>
            <li><a href="#">Pricing</a></li>
            <li><a href="#">Changelog</a></li>
            <li><a href="#">Roadmap</a></li>
          </ul>
        </div>
        <div class="footer-col">
          <h4>Resources</h4>
          <ul>
            <li><a href="#">Docs</a></li>
            <li><a href="#">API Reference</a></li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">Community</a></li>
          </ul>
        </div>
        <div class="footer-col">
          <h4>Company</h4>
          <ul>
            <li><a href="#">About</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Privacy</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      © <span id="year"></span> Nexus. All rights reserved. · Crafted with care.
    </div>
  </footer>

  <script>
    document.getElementById('year').textContent = new Date().getFullYear();

    const menuToggle = document.getElementById('menuToggle');
    const navLinks = document.getElementById('navLinks');
    menuToggle.addEventListener('click', () => {
      const isOpen = navLinks.classList.toggle('open');
      menuToggle.setAttribute('aria-expanded', isOpen);
      const icon = menuToggle.querySelector('i');
      icon.classList.toggle('fa-bars');
      icon.classList.toggle('fa-xmark');
    });

    navLinks.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => {
        navLinks.classList.remove('open');
        menuToggle.setAttribute('aria-expanded', 'false');
        const icon = menuToggle.querySelector('i');
        icon.classList.add('fa-bars');
        icon.classList.remove('fa-xmark');
      });
    });

    const reveals = document.querySelectorAll('.reveal');
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('visible');
          observer.unobserve(entry.target);
        }
      });
    }, { threshold: 0.12, rootMargin: '0px 0px -40px 0px' });

    reveals.forEach(el => observer.observe(el));
  </script>
</body>
</html>
