<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Nexus — Everyday essentials, elevated</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=DM+Mono:wght@400;500&family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:ital,wght@0,600;0,700;1,600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
  <style>
    :root { --ink:#1c2521; --cream:#f8f5ef; --paper:#fffdf9; --lime:#d8f06a; --coral:#e16f50; --mist:#e9ebe5; --muted:#68716b; --line:#daddd4; --shadow:0 18px 44px rgba(27,37,32,.09); --radius:18px; }
    * { box-sizing:border-box; }
    html { scroll-behavior:smooth; }
    body { margin:0; background:var(--cream); color:var(--ink); font:15px/1.5 "DM Sans",sans-serif; }
    button,input { font:inherit; }
    button,a { -webkit-tap-highlight-color:transparent; }
    a { color:inherit; text-decoration:none; }
    .container { width:min(1220px,calc(100% - 40px)); margin:auto; }
    .announcement { background:var(--ink); color:#f8faf4; text-align:center; padding:9px 16px; font:12px "DM Mono",monospace; letter-spacing:.04em; }
    .announcement b { color:var(--lime); }
    header { position:sticky; top:0; z-index:20; background:rgba(248,245,239,.92); backdrop-filter:blur(12px); border-bottom:1px solid transparent; }
    header.scrolled { border-color:var(--line); }
    .nav { height:82px; display:flex; align-items:center; gap:30px; }
    .brand { font:700 28px/1 "Playfair Display",serif; letter-spacing:-.04em; margin-right:14px; }
    .brand span { color:var(--coral); font-style:italic; }
    .links { display:flex; gap:24px; flex:1; }
    .links a { font-weight:600; font-size:14px; }
    .links a:hover { color:var(--coral); }
    .search { display:flex; align-items:center; gap:8px; width:215px; border-bottom:1px solid var(--ink); padding:7px 0; }
    .search input { width:100%; background:transparent; border:0; outline:0; color:var(--ink); font-size:13px; }
    .actions { display:flex; gap:8px; }
    .icon { display:grid; place-items:center; position:relative; width:36px; height:36px; border:0; background:transparent; cursor:pointer; border-radius:50%; color:var(--ink); }
    .icon:hover { background:var(--mist); }
    .count { position:absolute; top:1px; right:0; min-width:16px; height:16px; display:grid; place-items:center; padding:0 4px; border-radius:50px; background:var(--coral); color:white; font:10px "DM Mono",monospace; }
    .menu { display:none; }
    .hero { padding:34px 0 72px; }
    .hero-grid { display:grid; grid-template-columns:1.05fr .95fr; min-height:555px; overflow:hidden; background:var(--paper); border-radius:var(--radius); }
    .hero-copy { padding:clamp(38px,6vw,84px); display:flex; flex-direction:column; align-items:flex-start; justify-content:center; }
    .eyebrow { display:flex; align-items:center; gap:9px; color:var(--coral); font:500 11px "DM Mono",monospace; text-transform:uppercase; letter-spacing:.12em; }
    .eyebrow::before { content:""; width:22px; height:1px; background:currentColor; }
    h1 { max-width:570px; margin:18px 0; font:600 clamp(48px,6vw,82px)/.98 "Playfair Display",serif; letter-spacing:-.055em; }
    h1 em { color:var(--coral); font-weight:600; }
    .hero-copy p { max-width:430px; color:var(--muted); margin:0 0 28px; font-size:16px; }
    .button { display:inline-flex; align-items:center; justify-content:center; gap:10px; min-height:48px; padding:0 21px; border:1px solid var(--ink); border-radius:3px; background:var(--ink); color:white; cursor:pointer; font-weight:700; transition:.2s; }
    .button:hover { background:var(--lime); color:var(--ink); border-color:var(--lime); transform:translateY(-2px); }
    .button.light { background:transparent; color:var(--ink); border-color:var(--line); }
    .button.light:hover { background:var(--mist); border-color:var(--mist); }
    .hero-art { position:relative; min-height:360px; background:#d7c9b5; overflow:hidden; }
    .hero-art img { width:100%; height:100%; object-fit:cover; object-position:center; display:block; mix-blend-mode:multiply; }
    .stamp { position:absolute; left:28px; bottom:28px; width:116px; height:116px; padding:17px; display:grid; place-items:center; border-radius:50%; background:var(--lime); color:var(--ink); text-align:center; font:500 11px/1.15 "DM Mono",monospace; text-transform:uppercase; transform:rotate(-12deg); }
    .stamp b { font:700 28px/1 "DM Sans",sans-serif; }
    .trust { display:grid; grid-template-columns:repeat(3,1fr); gap:1px; background:var(--line); border:1px solid var(--line); }
    .trust-item { display:flex; justify-content:center; align-items:center; gap:11px; min-height:78px; background:var(--cream); font-size:13px; font-weight:600; }
    .trust-item i { color:var(--coral); }
    section { padding:80px 0; }
    .section-top { display:flex; justify-content:space-between; align-items:end; gap:20px; margin-bottom:27px; }
    .section-top h2 { margin:6px 0 0; font:600 clamp(32px,4vw,48px)/1 "Playfair Display",serif; letter-spacing:-.04em; }
    .all-link { padding-bottom:4px; border-bottom:1px solid var(--ink); font-weight:700; white-space:nowrap; }
    .all-link:hover { color:var(--coral); border-color:var(--coral); }
    .collections { display:grid; grid-template-columns:repeat(3,1fr); gap:18px; }
    .collection { min-height:340px; display:flex; align-items:end; position:relative; isolation:isolate; overflow:hidden; border-radius:var(--radius); color:white; padding:25px; background:#778379; }
    .collection::after { content:""; position:absolute; inset:0; z-index:-1; background:linear-gradient(0deg,rgba(14,23,18,.72),transparent 65%); }
    .collection img { position:absolute; inset:0; z-index:-2; width:100%; height:100%; object-fit:cover; transition:transform .5s; }
    .collection:hover img { transform:scale(1.06); }
    .collection h3 { margin:0 0 5px; font:600 31px/1 "Playfair Display",serif; }
    .collection p { margin:0; color:#f5f4ef; }
    .product-area { background:var(--ink); color:#f8f6ef; }
    .product-area .eyebrow { color:var(--lime); }
    .product-area .all-link { border-color:#f8f6ef; }
    .products { display:grid; grid-template-columns:repeat(4,1fr); gap:18px; }
    .product { position:relative; background:var(--paper); color:var(--ink); border-radius:10px; overflow:hidden; }
    .product-visual { position:relative; height:265px; background:#eceae2; overflow:hidden; }
    .product-visual img { width:100%; height:100%; object-fit:cover; transition:transform .35s; }
    .product:hover .product-visual img { transform:scale(1.05); }
    .tag { position:absolute; top:12px; left:12px; padding:5px 8px; background:var(--lime); font:500 10px "DM Mono",monospace; text-transform:uppercase; letter-spacing:.06em; }
    .wish { position:absolute; top:8px; right:8px; width:36px; height:36px; border:0; border-radius:50%; background:rgba(255,255,255,.9); cursor:pointer; }
    .wish.active { color:var(--coral); }
    .product-info { padding:16px; }
    .product-info h3 { margin:0 0 4px; font-size:15px; }
    .product-info p { margin:0; color:var(--muted); font-size:12px; }
    .product-bottom { display:flex; justify-content:space-between; align-items:center; margin-top:14px; font-weight:700; }
    .add { width:32px; height:32px; border:0; border-radius:50%; background:var(--ink); color:white; cursor:pointer; }
    .add:hover { background:var(--coral); }
    .promo { display:grid; grid-template-columns:1fr 1.2fr; min-height:405px; background:var(--lime); border-radius:var(--radius); overflow:hidden; }
    .promo-copy { padding:clamp(30px,5vw,68px); display:flex; align-items:flex-start; justify-content:center; flex-direction:column; }
    .promo-copy h2 { max-width:410px; margin:12px 0 17px; font:600 clamp(37px,4vw,58px)/1 "Playfair Display",serif; letter-spacing:-.05em; }
    .promo-copy p { max-width:410px; margin:0 0 24px; }
    .promo-image { min-height:280px; }
    .promo-image img { width:100%; height:100%; object-fit:cover; }
    .newsletter { display:flex; justify-content:space-between; align-items:center; gap:34px; padding:37px 43px; border-radius:var(--radius); background:var(--paper); }
    .newsletter h2 { margin:5px 0 0; font:600 36px/1 "Playfair Display",serif; letter-spacing:-.04em; }
    .email-form { display:flex; width:min(100%,440px); border-bottom:1px solid var(--ink); }
    .email-form input { width:100%; padding:13px 0; border:0; outline:0; background:transparent; }
    .email-form button { padding:0 0 0 16px; border:0; background:transparent; cursor:pointer; font-weight:700; }
    footer { padding:0 0 28px; }
    .footer-main { display:grid; grid-template-columns:2fr repeat(3,1fr); gap:35px; padding:54px 0; border-top:1px solid var(--line); }
    .footer-main h4 { margin:0 0 13px; font-size:13px; text-transform:uppercase; letter-spacing:.08em; }
    .footer-main a,.footer-main p { display:block; margin:0 0 7px; color:var(--muted); font-size:13px; }
    .footer-main a:hover { color:var(--coral); }
    .copyright { display:flex; justify-content:space-between; gap:15px; color:var(--muted); font:11px "DM Mono",monospace; }
    .toast { position:fixed; z-index:30; right:20px; bottom:20px; transform:translateY(120px); transition:.3s; padding:13px 17px; border-radius:7px; background:var(--ink); color:white; font-weight:600; box-shadow:var(--shadow); }
    .toast.show { transform:translateY(0); }

    @media (max-width:900px) {
      .links { display:none; }
      .search { margin-left:auto; }
      .hero-grid,.promo { grid-template-columns:1fr; }
      .hero-art { min-height:350px; }
      .collections { grid-template-columns:1fr 1fr; }
      .products { grid-template-columns:1fr 1fr; }
      .newsletter { align-items:flex-start; flex-direction:column; }
      .footer-main { grid-template-columns:2fr 1fr 1fr; }
      .footer-main > :last-child { display:none; }
    }

    @media (max-width:560px) {
      .container { width:min(100% - 28px,1220px); }
      .announcement { font-size:10px; }
      .nav { height:67px; gap:5px; }
      .brand { font-size:25px; margin-right:0; }
      .search { width:auto; border:0; }
      .search input { display:none; }
      .menu { display:grid; }
      .hero { padding:15px 0 45px; }
      .hero-copy { padding:40px 25px 44px; }
      .hero-art { min-height:295px; }
      .stamp { width:94px; height:94px; font-size:9px; left:16px; bottom:16px; }
      .stamp b { font-size:23px; }
      .trust { grid-template-columns:1fr; }
      .trust-item { min-height:54px; }
      section { padding:56px 0; }
      .collections { grid-template-columns:1fr; }
      .collection { min-height:245px; }
      .products { gap:10px; }
      .product-visual { height:185px; }
      .product-info { padding:12px; }
      .promo-copy { padding:37px 25px; }
      .newsletter { padding:30px 24px; }
      .newsletter h2 { font-size:31px; }
      .footer-main { grid-template-columns:1fr 1fr; gap:28px 15px; }
      .footer-main > :first-child { grid-column:span 2; }
      .copyright { flex-direction:column; }
    }
  </style>
</head>

<body>
  <div class="announcement">
    FREE SHIPPING ON ORDERS OVER $75 <b>—</b> EASY 30-DAY RETURNS
  </div>

  <header id="header">
    <div class="container nav">
      <button class="icon menu" aria-label="Open menu">
        <i class="fa-solid fa-bars"></i>
      </button>

      <a href="#" class="brand">nexus<span>.</span></a>

      <nav class="links" aria-label="Main navigation">
        <a href="#new">New arrivals</a>
        <a href="#collections">Collections</a>
        <a href="#shop">Shop all</a>
        <a href="#journal">Journal</a>
      </nav>

      <label class="search">
        <i class="fa-solid fa-magnifying-glass"></i>
        <input id="search" type="search" placeholder="Search the store">
      </label>

      <div class="actions">
        <button class="icon" aria-label="Account">
          <i class="fa-regular fa-user"></i>
        </button>
        <button class="icon" aria-label="Wishlist">
          <i class="fa-regular fa-heart"></i>
        </button>
        <button class="icon" id="cart" aria-label="Shopping bag">
          <i class="fa-solid fa-bag-shopping"></i>
          <span class="count" id="count">0</span>
        </button>
      </div>
    </div>
  </header>

  <main>
    <section class="hero">
      <div class="container hero-grid">
        <div class="hero-copy">
          <div class="eyebrow">The autumn edit / 2026</div>
          <h1>Objects for a <em>well-lived</em> life.</h1>
          <p>Considered essentials for the spaces you make, the journeys you take, and the everyday moments in between.</p>
          <a class="button" href="#new">
            Shop new arrivals <i class="fa-solid fa-arrow-right"></i>
          </a>
        </div>

        <div class="hero-art">
          <img src="https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?auto=format&fit=crop&w=1100&q=85" alt="Woman in an olive jacket">
          <div class="stamp">up to <b>30%</b> off selected styles</div>
        </div>
      </div>
    </section>

    <div class="container trust">
      <div class="trust-item"><i class="fa-solid fa-truck-fast"></i> Free shipping over $75</div>
      <div class="trust-item"><i class="fa-solid fa-box-open"></i> Easy 30-day returns</div>
      <div class="trust-item"><i class="fa-regular fa-circle-check"></i> Designed to last</div>
    </div>

    <section class="container" id="collections">
      <div class="section-top">
        <div>
          <div class="eyebrow">Curated for you</div>
          <h2>Explore the collection</h2>
        </div>
        <a class="all-link" href="#shop">View all collections</a>
      </div>

      <div class="collections">
        <a class="collection" href="#shop">
          <img src="https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=800&q=80" alt="Women's clothing">
          <div>
            <h3>For her</h3>
            <p>Relaxed silhouettes, thoughtful details</p>
          </div>
        </a>

        <a class="collection" href="#shop">
          <img src="https://images.unsplash.com/photo-1490578474895-699cd4e2cf59?auto=format&fit=crop&w=800&q=80" alt="Men's clothing">
          <div>
            <h3>For him</h3>
            <p>Made for every day, made well</p>
          </div>
        </a>

        <a class="collection" href="#shop">
          <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=80" alt="Watch and accessories">
          <div>
            <h3>Small things</h3>
            <p>Gifts, objects, and finishing touches</p>
          </div>
        </a>
      </div>
    </section>

    <section class="product-area" id="new">
      <div class="container">
        <div class="section-top">
          <div>
            <div class="eyebrow">Just landed</div>
            <h2>New in store</h2>
          </div>
          <a class="all-link" href="#shop">Shop everything</a>
        </div>

        <div class="products" id="products"></div>
      </div>
    </section>

    <section class="container">
      <div class="promo">
        <div class="promo-copy">
          <div class="eyebrow">Nexus home</div>
          <h2>Bring a little calm home.</h2>
          <p>Shape a slower, softer everyday with pieces made to live beautifully.</p>
          <a class="button light" href="#shop">
            Explore homeware <i class="fa-solid fa-arrow-right"></i>
          </a>
        </div>

        <div class="promo-image">
          <img src="https://images.unsplash.com/photo-1618221195710-dd6b41faaea6?auto=format&fit=crop&w=1100&q=85" alt="Warm living room interior">
        </div>
      </div>
    </section>

    <section class="container" id="journal">
      <div class="newsletter">
        <div>
          <div class="eyebrow">A note from us</div>
          <h2>Good things, in your inbox.</h2>
        </div>

        <form class="email-form" id="emailForm">
          <input type="email" required placeholder="Your email address">
          <button type="submit">
            Subscribe <i class="fa-solid fa-arrow-right"></i>
          </button>
        </form>
      </div>
    </section>
  </main>

  <footer class="container">
    <div class="footer-main">
      <div>
        <a href="#" class="brand">nexus<span>.</span></a>
        <p style="max-width:230px;margin-top:14px">Slow down. Choose better. Find something you’ll keep.</p>
      </div>

      <div>
        <h4>Shop</h4>
        <a href="#new">New arrivals</a>
        <a href="#shop">Clothing</a>
        <a href="#shop">Home & living</a>
        <a href="#shop">Gifts</a>
      </div>

      <div>
        <h4>Help</h4>
        <a href="#">Shipping & returns</a>
        <a href="#">Care guide</a>
        <a href="#">Contact</a>
        <a href="#">FAQs</a>
      </div>

      <div>
        <h4>Follow</h4>
        <a href="#">Instagram</a>
        <a href="#">Pinterest</a>
        <a href="#">TikTok</a>
      </div>
    </div>

    <div class="copyright">
      <span>© 2026 NEXUS GOODS</span>
      <span>PRIVACY &nbsp; TERMS</span>
    </div>
  </footer>

  <div class="toast" id="toast" role="status">Added to your bag.</div>

  <script>
    const items = [
      ['Classic Crewneck', 'Soft organic cotton', '89', 'https://images.unsplash.com/photo-1627225924765-552d49cf47ad?auto=format&fit=crop&w=700&q=80', 'New'],
      ['Weekender Bag', 'Waxed canvas & leather', '180', 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80', ''],
      ['Ceramic Pour Set', 'Hand-finished stoneware', '68', 'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=700&q=80', 'Best seller'],
      ['Field Watch', 'Brushed steel, olive strap', '215', 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=700&q=80', '']
    ];

    const products = document.querySelector('#products');
    let cart = 0;

    products.innerHTML = items.map((p, i) => `
      <article class="product">
        <div class="product-visual">
          <img src="${p[3]}" alt="${p[0]}">
          ${p[4] ? `<span class="tag">${p[4]}</span>` : ''}
          <button class="wish" aria-label="Save ${p[0]}">
            <i class="fa-regular fa-heart"></i>
          </button>
        </div>

        <div class="product-info">
          <h3>${p[0]}</h3>
          <p>${p[1]}</p>

          <div class="product-bottom">
            <span>$${p[2]}</span>
            <button class="add" data-item="${i}" aria-label="Add ${p[0]} to bag">
              <i class="fa-solid fa-plus"></i>
            </button>
          </div>
        </div>
      </article>
    `).join('');

    const toast = document.querySelector('#toast');
    let timer;

    document.querySelectorAll('.add').forEach(button => {
      button.addEventListener('click', () => {
        document.querySelector('#count').textContent = ++cart;
        toast.classList.add('show');

        clearTimeout(timer);
        timer = setTimeout(() => toast.classList.remove('show'), 1800);
      });
    });

    document.querySelectorAll('.wish').forEach(button => {
      button.addEventListener('click', () => {
        button.classList.toggle('active');
        button.innerHTML = `
          <i class="fa-${button.classList.contains('active') ? 'solid' : 'regular'} fa-heart"></i>
        `;
      });
    });

    document.querySelector('#emailForm').addEventListener('submit', event => {
      event.preventDefault();
      event.currentTarget.innerHTML = '<strong>Thank you — you’re on the list.</strong>';
    });

    addEventListener('scroll', () => {
      document.querySelector('#header').classList.toggle('scrolled', scrollY > 15);
    });
  </script>
</body>
</html>
