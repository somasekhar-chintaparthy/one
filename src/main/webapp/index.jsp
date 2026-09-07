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
    /* ———— reset & base ———— */
    * { margin:0; padding:0; box-sizing:border-box; }
    body {
      background: #f6f5f2;
      color: #191e1b;
      font: 15px/1.6 'Inter', sans-serif;
      -webkit-font-smoothing: antialiased;
    }
    a { color:inherit; text-decoration:none; }
    button { font:inherit; background:none; border:none; cursor:pointer; }

    /* ———— utility ———— */
    .container { width: min(1240px, 100% - 40px); margin: 0 auto; }
    .flex { display: flex; align-items: center; }

    /* ———— header ———— */
    .top-bar {
      background: #1d231f;
      color: #e4e7e0;
      text-align: center;
      padding: 8px 16px;
      font-size: 11px;
      letter-spacing: 0.5px;
      font-weight: 400;
      border-bottom: 1px solid #2f3631;
    }
    .top-bar span { color: #c5d86d; font-weight: 600; }

    header {
      position: sticky;
      top: 0;
      z-index: 30;
      background: rgba(246, 245, 242, 0.88);
      backdrop-filter: blur(14px);
      border-bottom: 1px solid transparent;
      transition: border-color 0.2s;
    }
    header.scrolled { border-color: #dbdbd2; }

    .nav {
      height: 74px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 18px;
    }
    .brand {
      font: 700 26px/1 'Outfit', sans-serif;
      letter-spacing: -0.04em;
    }
    .brand i { color: #b4684b; font-weight: 400; margin-right: 2px; }

    .nav-links {
      display: flex;
      gap: 28px;
      font-weight: 500;
      font-size: 14px;
    }
    .nav-links a { padding: 4px 0; border-bottom: 2px solid transparent; transition: 0.2s; }
    .nav-links a:hover { border-bottom-color: #b4684b; color: #b4684b; }

    .actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .actions .icon-btn {
      width: 40px;
      height: 40px;
      display: grid;
      place-items: center;
      border-radius: 40px;
      transition: 0.2s;
      color: #1d231f;
    }
    .actions .icon-btn:hover { background: #e4e3db; }
    .cart-badge {
      position: relative;
    }
    .badge {
      position: absolute;
      top: 4px;
      right: 2px;
      background: #b4684b;
      color: white;
      font-size: 9px;
      font-weight: 700;
      min-width: 18px;
      height: 18px;
      border-radius: 40px;
      display: grid;
      place-items: center;
      padding: 0 4px;
    }

    /* ———— hero ———— */
    .hero {
      padding: 28px 0 50px;
    }
    .hero-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 28px;
      background: #fefcf8;
      border-radius: 28px;
      overflow: hidden;
      box-shadow: 0 8px 32px rgba(0,0,0,0.02);
    }
    .hero-text {
      padding: clamp(32px, 5vw, 72px);
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .tagline {
      font: 500 11px 'Outfit', sans-serif;
      letter-spacing: 2px;
      text-transform: uppercase;
      color: #b4684b;
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .tagline::before {
      content: '';
      width: 24px;
      height: 2px;
      background: #b4684b;
      display: inline-block;
    }
    .hero-text h1 {
      font: 700 clamp(44px, 6vw, 78px)/1 'Outfit', sans-serif;
      letter-spacing: -0.04em;
      margin: 12px 0 14px;
    }
    .hero-text h1 i { color: #b4684b; font-weight: 400; }
    .hero-text p {
      max-width: 400px;
      color: #5b625c;
      margin-bottom: 28px;
      font-size: 16px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      background: #1d231f;
      color: white;
      padding: 0 28px;
      height: 50px;
      border-radius: 50px;
      font-weight: 600;
      font-size: 14px;
      transition: 0.2s;
      border: 1px solid #1d231f;
      width: fit-content;
    }
    .btn i { transition: 0.2s; }
    .btn:hover { background: #b4684b; border-color: #b4684b; transform: translateY(-2px); }
    .btn-outline {
      background: transparent;
      color: #1d231f;
      border-color: #d0d0c5;
    }
    .btn-outline:hover { background: #ebeaE3; border-color: #b4684b; color: #1d231f; }

    .hero-visual {
      position: relative;
      background: #dedbd2;
      min-height: 340px;
      overflow: hidden;
    }
    .hero-visual img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      display: block;
      mix-blend-mode: multiply;
      transition: 0.5s;
    }
    .hero-visual:hover img { transform: scale(1.02); }
    .badge-stamp {
      position: absolute;
      bottom: 24px;
      left: 24px;
      background: #c5d86d;
      color: #1d231f;
      padding: 16px 22px;
      border-radius: 80px;
      font-weight: 600;
      font-size: 13px;
      display: flex;
      align-items: center;
      gap: 8px;
      letter-spacing: -0.2px;
    }
    .badge-stamp i { font-size: 18px; }

    /* ———— trust ———— */
    .trust {
      display: grid;
      grid-template-columns: repeat(3,1fr);
      gap: 1px;
      background: #d2d4cb;
      border-radius: 60px;
      overflow: hidden;
      margin: 18px 0 30px;
    }
    .trust-item {
      background: #f6f5f2;
      padding: 16px 12px;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 12px;
      font-size: 13px;
      font-weight: 500;
      color: #2d332f;
    }
    .trust-item i { color: #b4684b; font-size: 18px; }

    /* ———— section headers ———— */
    .section-head {
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      margin-bottom: 28px;
    }
    .section-head h2 {
      font: 600 clamp(32px, 3.6vw, 44px)/1.1 'Outfit', sans-serif;
      letter-spacing: -0.04em;
      margin-top: 6px;
    }
    .section-head .link {
      font-weight: 600;
      border-bottom: 2px solid transparent;
      transition: 0.2s;
      padding-bottom: 2px;
      white-space: nowrap;
    }
    .section-head .link:hover { border-color: #b4684b; color: #b4684b; }

    section { padding: 60px 0; }

    /* ———— collections ———— */
    .collections-grid {
      display: grid;
      grid-template-columns: repeat(3,1fr);
      gap: 20px;
    }
    .coll-card {
      position: relative;
      border-radius: 24px;
      overflow: hidden;
      min-height: 290px;
      display: flex;
      align-items: flex-end;
      padding: 28px;
      background: #8b8f84;
      isolation: isolate;
    }
    .coll-card::after {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(0deg, rgba(20,24,20,0.7), transparent 65%);
      z-index: 1;
    }
    .coll-card img {
      position: absolute;
      inset: 0;
      width: 100%;
      height: 100%;
      object-fit: cover;
      z-index: 0;
      transition: 0.4s;
    }
    .coll-card:hover img { transform: scale(1.06); }
    .coll-card .info { position: relative; z-index: 2; color: white; }
    .coll-card .info h3 { font: 600 28px/1 'Outfit', sans-serif; margin-bottom: 4px; }
    .coll-card .info p { font-size: 14px; opacity: 0.9; }

    /* ———— product area (dark) ———— */
    .product-area {
      background: #1d231f;
      color: #f0eee9;
    }
    .product-area .section-head .link { color: #cdd8b0; border-color: #3a423b; }
    .product-area .section-head .link:hover { border-color: #c5d86d; color: #c5d86d; }
    .product-area .section-head h2 { color: #f0eee9; }

    .products-grid {
      display: grid;
      grid-template-columns: repeat(4,1fr);
      gap: 16px;
    }
    .product-card {
      background: #faf9f5;
      border-radius: 20px;
      overflow: hidden;
      color: #191e1b;
      transition: 0.25s;
    }
    .product-card:hover { transform: translateY(-6px); box-shadow: 0 18px 30px rgba(0,0,0,0.15); }
    .product-img {
      height: 250px;
      background: #d8d6cd;
      position: relative;
      overflow: hidden;
    }
    .product-img img { width: 100%; height: 100%; object-fit: cover; transition: 0.3s; }
    .product-card:hover .product-img img { transform: scale(1.04); }
    .product-tag {
      position: absolute;
      top: 14px;
      left: 14px;
      background: #c5d86d;
      padding: 4px 12px;
      border-radius: 40px;
      font: 600 10px 'Outfit', sans-serif;
      letter-spacing: 0.4px;
      text-transform: uppercase;
    }
    .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      background: rgba(255,255,255,0.85);
      width: 36px;
      height: 36px;
      border-radius: 40px;
      display: grid;
      place-items: center;
      transition: 0.2s;
      border: 1px solid transparent;
    }
    .wish-btn:hover { background: white; border-color: #b4684b; }
    .wish-btn.active { color: #b4684b; }

    .product-meta {
      padding: 18px 16px 16px;
    }
    .product-meta h3 { font-weight: 600; font-size: 16px; margin-bottom: 2px; }
    .product-meta .sub { color: #5b625c; font-size: 12px; }
    .product-footer {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-top: 12px;
      font-weight: 600;
    }
    .add-btn {
      width: 34px;
      height: 34px;
      border-radius: 40px;
      background: #1d231f;
      color: white;
      display: grid;
      place-items: center;
      transition: 0.2s;
    }
    .add-btn:hover { background: #b4684b; }

    /* ———— promo ———— */
    .promo-block {
      display: grid;
      grid-template-columns: 1fr 1.2fr;
      border-radius: 28px;
      overflow: hidden;
      background: #c5d86d;
    }
    .promo-text {
      padding: clamp(30px, 5vw, 64px);
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .promo-text h2 {
      font: 600 clamp(38px, 4.4vw, 58px)/1 'Outfit', sans-serif;
      letter-spacing: -0.04em;
      margin: 10px 0 14px;
    }
    .promo-text p { max-width: 400px; font-size: 16px; color: #1d2a1e; }
    .promo-text .btn-outline { border-color: #1d231f; color: #1d231f; }
    .promo-text .btn-outline:hover { background: #1d231f; color: white; }

    .promo-img { min-height: 270px; background: #b5b8aa; }
    .promo-img img { width: 100%; height: 100%; object-fit: cover; }

    /* ———— newsletter ———— */
    .newsletter-card {
      background: #fefcf8;
      border-radius: 40px;
      padding: 42px 48px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 30px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.02);
    }
    .newsletter-card h2 {
      font: 600 32px/1 'Outfit', sans-serif;
      letter-spacing: -0.04em;
    }
    .newsletter-card .sub { font-size: 14px; color: #5b625c; margin-top: 4px; }
    .email-box {
      display: flex;
      align-items: center;
      border-bottom: 2px solid #1d231f;
      width: 100%;
      max-width: 400px;
    }
    .email-box input {
      width: 100%;
      border: none;
      padding: 14px 0;
      background: transparent;
      outline: none;
      font-size: 14px;
    }
    .email-box button {
      padding: 14px 0 14px 18px;
      font-weight: 700;
      white-space: nowrap;
    }

    /* ———— footer ———— */
    footer {
      padding: 10px 0 30px;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr repeat(3,1fr);
      gap: 40px;
      padding: 48px 0 30px;
      border-top: 1px solid #dad9cf;
    }
    .footer-grid h4 { font-weight: 600; font-size: 13px; letter-spacing: 0.5px; margin-bottom: 12px; text-transform: uppercase; }
    .footer-grid a, .footer-grid p {
      display: block;
      font-size: 13px;
      color: #5b625c;
      margin-bottom: 6px;
      transition: 0.2s;
    }
    .footer-grid a:hover { color: #b4684b; }
    .footer-bottom {
      display: flex;
      justify-content: space-between;
      font-size: 11px;
      color: #7a827c;
      padding-top: 16px;
      border-top: 1px solid #e3e2d9;
    }

    /* ———— toast ———— */
    .toast {
      position: fixed;
      bottom: 30px;
      right: 30px;
      background: #1d231f;
      color: white;
      padding: 14px 28px;
      border-radius: 50px;
      font-weight: 600;
      box-shadow: 0 10px 30px rgba(0,0,0,0.12);
      transform: translateY(80px);
      opacity: 0;
      transition: 0.3s;
      z-index: 99;
    }
    .toast.show { transform: translateY(0); opacity: 1; }

    /* ———— responsive ———— */
    @media (max-width: 920px) {
      .hero-grid { grid-template-columns: 1fr; }
      .collections-grid { grid-template-columns: 1fr 1fr; }
      .products-grid { grid-template-columns: 1fr 1fr; }
      .promo-block { grid-template-columns: 1fr; }
      .footer-grid { grid-template-columns: 1fr 1fr; }
      .footer-grid > :first-child { grid-column: span 2; }
    }
    @media (max-width: 600px) {
      .nav-links { display: none; }
      .brand { font-size: 23px; }
      .container { width: calc(100% - 24px); }
      .hero-text { padding: 32px 20px; }
      .trust { grid-template-columns: 1fr; border-radius: 30px; }
      .collections-grid { grid-template-columns: 1fr; }
      .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .product-img { height: 180px; }
      .newsletter-card { padding: 30px 20px; flex-direction: column; align-items: flex-start; }
      .footer-grid { grid-template-columns: 1fr; gap: 24px; }
      .footer-grid > :first-child { grid-column: 1; }
      .badge-stamp { font-size: 11px; padding: 10px 16px; bottom: 12px; left: 12px; }
      .section-head { flex-direction: column; align-items: flex-start; gap: 8px; }
      .toast { right: 16px; bottom: 16px; padding: 12px 22px; font-size: 13px; }
    }
  </style>
</head>
<body>

  <div class="top-bar">FREE SHIPPING OVER $75 <span>·</span> 30-DAY RETURNS · DESIGNED TO LAST</div>

  <header id="header">
    <div class="container nav">
      <a href="#" class="brand"><i class="fa-regular fa-gem"></i>nexus</a>
      <nav class="nav-links">
        <a href="#new">New</a>
        <a href="#collections">Collections</a>
        <a href="#shop">Shop</a>
        <a href="#journal">Journal</a>
      </nav>
      <div class="actions">
        <button class="icon-btn" aria-label="Search"><i class="fa-regular fa-magnifying-glass"></i></button>
        <button class="icon-btn" aria-label="Account"><i class="fa-regular fa-user"></i></button>
        <button class="icon-btn cart-badge" id="cartBtn">
          <i class="fa-regular fa-bag-shopping"></i>
          <span class="badge" id="cartCount">0</span>
        </button>
      </div>
    </div>
  </header>

  <main>
    <!-- hero -->
    <section class="hero">
      <div class="container hero-grid">
        <div class="hero-text">
          <div class="tagline">autumn 2026</div>
          <h1>Everyday <i>elevated</i></h1>
          <p>Quietly considered goods for the home, the journey, and the moments between.</p>
          <a href="#new" class="btn">Discover <i class="fa-regular fa-arrow-right"></i></a>
        </div>
        <div class="hero-visual">
          <img src="https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?auto=format&fit=crop&w=1100&q=85" alt="minimal style">
          <div class="badge-stamp"><i class="fa-regular fa-star"></i> up to 30% off</div>
        </div>
      </div>
    </section>

    <!-- trust -->
    <div class="container trust">
      <div class="trust-item"><i class="fa-regular fa-truck"></i> free shipping over $75</div>
      <div class="trust-item"><i class="fa-regular fa-rotate-left"></i> easy returns</div>
      <div class="trust-item"><i class="fa-regular fa-clock"></i> built to last</div>
    </div>

    <!-- collections -->
    <section id="collections">
      <div class="container">
        <div class="section-head">
          <div><div class="tagline">curated</div><h2>Explore collections</h2></div>
          <a href="#shop" class="link">View all <i class="fa-regular fa-arrow-right"></i></a>
        </div>
        <div class="collections-grid">
          <a class="coll-card" href="#shop">
            <img src="https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=800&q=80" alt="her">
            <div class="info"><h3>For her</h3><p>effortless silhouettes</p></div>
          </a>
          <a class="coll-card" href="#shop">
            <img src="https://images.unsplash.com/photo-1490578474895-699cd4e2cf59?auto=format&fit=crop&w=800&q=80" alt="him">
            <div class="info"><h3>For him</h3><p>daily essentials</p></div>
          </a>
          <a class="coll-card" href="#shop">
            <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=80" alt="objects">
            <div class="info"><h3>Small things</h3><p>objects & gifts</p></div>
          </a>
        </div>
      </div>
    </section>

    <!-- products -->
    <section class="product-area" id="new">
      <div class="container">
        <div class="section-head">
          <div><div class="tagline" style="color:#c5d86d;">just landed</div><h2>New in store</h2></div>
          <a href="#shop" class="link">Shop all <i class="fa-regular fa-arrow-right"></i></a>
        </div>
        <div class="products-grid" id="productsGrid"></div>
      </div>
    </section>

    <!-- promo -->
    <section>
      <div class="container promo-block">
        <div class="promo-text">
          <div class="tagline">home edit</div>
          <h2>Bring calm home</h2>
          <p>Slow, considered pieces for every room. Designed to live beautifully.</p>
          <a href="#shop" class="btn btn-outline">Explore home <i class="fa-regular fa-arrow-right"></i></a>
        </div>
        <div class="promo-img">
          <img src="https://images.unsplash.com/photo-1618221195710-dd6b41faaea6?auto=format&fit=crop&w=1100&q=85" alt="warm interior">
        </div>
      </div>
    </section>

    <!-- newsletter -->
    <section id="journal">
      <div class="container newsletter-card">
        <div>
          <div class="tagline" style="color:#b4684b;">notes</div>
          <h2>Good things, in your inbox</h2>
          <div class="sub">No spam, just quality.</div>
        </div>
        <form class="email-box" id="emailForm">
          <input type="email" placeholder="Your email" required>
          <button type="submit">Subscribe <i class="fa-regular fa-arrow-right"></i></button>
        </form>
      </div>
    </section>
  </main>

  <footer class="container">
    <div class="footer-grid">
      <div>
        <a href="#" class="brand"><i class="fa-regular fa-gem"></i>nexus</a>
        <p style="margin-top:12px;max-width:240px;">Slow down. Choose better. Keep forever.</p>
      </div>
      <div><h4>Shop</h4><a href="#new">New</a><a href="#shop">Clothing</a><a href="#shop">Home</a><a href="#shop">Gifts</a></div>
      <div><h4>Help</h4><a href="#">Shipping</a><a href="#">Returns</a><a href="#">Care</a><a href="#">FAQs</a></div>
      <div><h4>Connect</h4><a href="#">Instagram</a><a href="#">Pinterest</a><a href="#">TikTok</a></div>
    </div>
    <div class="footer-bottom">
      <span>© 2026 NEXUS</span>
      <span>PRIVACY · TERMS</span>
    </div>
  </footer>

  <div class="toast" id="toast" role="status">✓ added to bag</div>

  <script>
    (function() {
      // product data
      const items = [
        ['Classic Crewneck', '100% organic cotton', '89', 'https://images.unsplash.com/photo-1627225924765-552d49cf47ad?auto=format&fit=crop&w=700&q=80', 'New'],
        ['Weekender Bag', 'waxed canvas & leather', '180', 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80', ''],
        ['Pour-over set', 'handmade stoneware', '68', 'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=700&q=80', 'best seller'],
        ['Field watch', 'steel, olive strap', '215', 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=700&q=80', '']
      ];

      const grid = document.getElementById('productsGrid');
      let cart = 0;

      grid.innerHTML = items.map((p, idx) => `
        <article class="product-card">
          <div class="product-img">
            <img src="${p[3]}" alt="${p[0]}">
            ${p[4] ? `<span class="product-tag">${p[4]}</span>` : ''}
            <button class="wish-btn" data-wish="${idx}" aria-label="wishlist"><i class="fa-regular fa-heart"></i></button>
          </div>
          <div class="product-meta">
            <h3>${p[0]}</h3>
            <div class="sub">${p[1]}</div>
            <div class="product-footer">
              <span>$${p[2]}</span>
              <button class="add-btn" data-add="${idx}" aria-label="add to bag"><i class="fa-regular fa-plus"></i></button>
            </div>
          </div>
        </article>
      `).join('');

      // wishlist toggle
      document.querySelectorAll('.wish-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          this.classList.toggle('active');
          const icon = this.querySelector('i');
          if (this.classList.contains('active')) {
            icon.className = 'fa-solid fa-heart';
          } else {
            icon.className = 'fa-regular fa-heart';
          }
        });
      });

      // add to cart
      const toast = document.getElementById('toast');
      let timer;

      document.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function() {
          cart++;
          document.getElementById('cartCount').textContent = cart;
          toast.textContent = '✓ added to bag';
          toast.classList.add('show');
          clearTimeout(timer);
          timer = setTimeout(() => toast.classList.remove('show'), 1600);
        });
      });

      // newsletter
      document.getElementById('emailForm').addEventListener('submit', function(e) {
        e.preventDefault();
        this.innerHTML = '<span style="font-weight:600;">✨ you’re on the list</span>';
      });

      // header scroll
      window.addEventListener('scroll', () => {
        document.getElementById('header').classList.toggle('scrolled', window.scrollY > 20);
      });

      // cart button (just for demo)
      document.getElementById('cartBtn').addEventListener('click', function() {
        toast.textContent = '🛒 cart: ' + cart + ' items';
        toast.classList.add('show');
        clearTimeout(timer);
        timer = setTimeout(() => toast.classList.remove('show'), 1800);
      });
    })();
  </script>
</body>
</html>
