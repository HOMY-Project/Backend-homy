INSERT INTO
    roles(
      role
)
VALUES
    ( 
        'user'
    ),
    (
        'admin'
    ),
    (
        'products manager'
    ),
    (
        'categories manager'
    ),
    (
        'banners manager'
    ),
    (
        'orders manager'
    ),
    (
        'brands manager'
    ),
    (
        'banners manager'
    ),
    (
        'sub-categories manager'
    );
INSERT INTO
    pages(
      name,
      link
)
VALUES
    (
        'home',
        '/'
    ),
    (
        'products',
        '/products'
    ),
    (
        'categories',
        '/categories'
    ),
    (
        'subCategories',
        '/subCategories'
    ),
    (
        'brands',
        '/brands'
    ),
    (
        'orders',
        '/orders'
    ),
    (
        'users',
        '/users'
    ),
    (
        'profile',
        '/profile'
    ),
    (
        'roles',
        '/roles'
    ),
    (
        'banners',
        '/banners'
    ),
    (
        'promoCode',
        '/promoCode'
    );
INSERT INTO
    permissions(
      name
    )
VALUES 
    (
        'get'
    ),
    (
        'post'
    ),
    (
        'put'
    ),
    (
        'delete'
    );
INSERT INTO
    roles_permissions (
      role_id,
      permission_id,
      page_id
    )
VALUES
    (3,1,2),
    (3,2,2),
    (3,3,2),
    (3,4,2),
    (4,1,3),
    (4,2,3),
    (4,3,3),
    (4,4,3),
    (9,1,4),
    (9,2,4),
    (9,3,4),
    (9,4,4),
    (7,1,5),
    (7,2,5),
    (7,3,5),
    (8,1,10),
    (8,2,10),
    (8,3,10),
    (6,1,5),
    (6,3,5);
INSERT INTO
    users(
        name, 
        email, 
        password, 
        phone,
        role_id
    )
VALUES
    (
        'user1',
        'user1@gmail.com',
        '$2b$10$DviVVuryzUWALxq.yG0Yd.ChLIYNXuKDw5WoUiKK7TPnFuZcL8uL2',
        '+96512345678',
        1
    ),
    (
        'user2',
        'user2@gmail.com',
        '$2b$10$klSql.FCEBJSLDScw0BZQuEeROI5oXiNmj5oYc1sr2nPl7GPctrLG',
        '+96512345678',
        1
    ),
    (
        'user3',
        'user3@gmail.com',
        '$2b$10$klSql.FCEBJSLDScw0BZQuEeROI5oXiNmj5oYc1sr2nPl7GPctrLG',
        '+96512345678',
        1
    ),
    (
        'admin',
        'admin@gmail.com',
        '$2b$10$p07XMmOtUZ35RSBDOH.O.OKCTnASQg67sHauTP2pdMieA0wesM/ia',
        '+96512345678',
        2
    ),
    (
        'product',
        'product@gmail.com',
        '$2b$10$p07XMmOtUZ35RSBDOH.O.OKCTnASQg67sHauTP2pdMieA0wesM/ia',
        '+96512345678',
        3
    ),
    (
        'brand',
        'brand@gmail.com',
        '$2b$10$p07XMmOtUZ35RSBDOH.O.OKCTnASQg67sHauTP2pdMieA0wesM/ia',
        '+96512345678',
        7
    ),
    (
        'category',
        'category@gmail.com',
        '$2b$10$p07XMmOtUZ35RSBDOH.O.OKCTnASQg67sHauTP2pdMieA0wesM/ia',
        '+96512345678',
        4
    ),
    (
        'banner',
        'banner@gmail.com',
        '$2b$10$p07XMmOtUZ35RSBDOH.O.OKCTnASQg67sHauTP2pdMieA0wesM/ia',
        '+96512345678',
        8
    ),
    (
        'sub-category',
        'sub-category@gmail.com',
        '$2b$10$p07XMmOtUZ35RSBDOH.O.OKCTnASQg67sHauTP2pdMieA0wesM/ia',
        '+96512345678',
        9
    );

INSERT INTO
    addresses(
        city, 
        area, 
        street, 
        block,
        building,
        default_address,
        user_id
    )
VALUES
    (
        'Kuwait', 
        'First Residence Building', 
        'Kuwait Street', 
        2,
        10,
        TRUE,
        1
    ),
    (
        'Kuwait', 
        'First Residence Building', 
        'number one ', 
        10,
        50,
        FALSE,
        1
    ),
    (
        'Gaza', 
        'Alshik Radwan Building', 
        'Ahmed Yassen Street ', 
        5,
        60,
        FALSE,
        2
    );

INSERT INTO
    categories(
        name, 
        image,
        place, 
        has_Sub_Categories,
        archived
    )
VALUES
    (
        'Security Camers',
        'https://i.postimg.cc/0NfwBLRt/Camera-uta6i-EV-1.png',
        'in',
        FALSE,
        FALSE
    ),
    (
        'Smart Locks',
        'https://i.postimg.cc/wvM7bMkv/Smart-Locks-1.png',
        'in',
        TRUE,
        FALSE
    ),
    (
        'Smart Switches',
        'https://i.postimg.cc/RFYNrmPT/Smart-lighting-1.png',
        'in',
        FALSE,
        FALSE
    ),
    (
        'Smart BLinds',
        'https://i.postimg.cc/pV9BmLtR/Smart-switches-1.png',
        'in',
        FALSE,
        FALSE
    ),
    (
        'Smart Alarms',
        'https://i.postimg.cc/gJ18V3Pd/Smart-switches-1-1.png',
        'out',
        FALSE,
        FALSE
    ),
    (
        'Smart Lighting',
        'https://i.postimg.cc/FKBLv0zc/Smart-switches-2.png',
        'out',
        FALSE,
        FALSE
    );

INSERT INTO
    sub_categories(
        name, 
        category_id,
        archived
    )
VALUES
    (
        'Smart Wi-Fi',
        2,
        FALSE
    ),
    (
        'Smart Bluetooth',
        2,
        FALSE
    ),
    (
        'Wood & PVC Doors',
        2,
        FALSE
    ),
    (
        'Aluminum Doors',
        2,
        FALSE
    ),
    (
        'Glass Doors',
        2,
        FALSE
    ),
    (
        'Metal Doors',
        2,
        FALSE
    ),
    (
        'Aluminum Doors',
        2,
        FALSE
    );

INSERT INTO
    products(
    name,
    price,
    image,
    albums,
    description,
    quick_overview,
    discount,
    shipment,
    brand,
    inStock,
    sub_category_id,
    category_id,
    archived,
    rating,
    users_rated_number
    )
VALUES
    (
        'Xiaomi Motion-Activated Night Light',
        100,
        'https://i.postimg.cc/jdcCKyk5/Rectangle-111.png',
        '{https://i.postimg.cc/vTQMSNyv/Rectangle-109.png,https://i.postimg.cc/NfjB6Sps/Rectangle-108.png,https://i.postimg.cc/Y9xBgzFL/Rectangle-107.png,https://i.postimg.cc/J7PWzKm9/Rectangle-106.png}',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        10.0,
        5.0,
        'Xiaomi',
        TRUE,
        1,
        2,
        FALSE,
        16,
        5
    ),
    (
        'Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin',
        50,
        'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg',
        '{https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg,https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg}',
        '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz',
        '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz',
        50.0,
        6.5,
        'Acer',
        TRUE,
        NULL,
        1,
        FALSE,
        1,
        1
    ),
    (
        'prdocut 3',
        150,
        'https://i.postimg.cc/jdcCKyk5/Rectangle-111.png',
        '{https://i.postimg.cc/vTQMSNyv/Rectangle-109.png,https://i.postimg.cc/NfjB6Sps/Rectangle-108.png,https://i.postimg.cc/Y9xBgzFL/Rectangle-107.png,https://i.postimg.cc/J7PWzKm9/Rectangle-106.png}',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        60.0,
        10,
        'Xiaomi',
        TRUE,
        1,
        2,
        FALSE,
        0,
        0
    ),
    (
        'product 4',
        45,
        'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg',
        '{https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg,https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg}',
        '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz',
        '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz',
        70.0,
        0,
        'Acer',
        TRUE,
        NULL,
        1,
        FALSE,
        0,
        0
    ),
    (
        'Xiaomi Motion-Activated Night Light',
        300,
        'https://i.postimg.cc/wvM7bMkv/Smart-Locks-1.png',
        '{https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg}',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        30.0,
        0,
        'Xiaomi',
        TRUE,
        3,
        2,
        FALSE,
        0,
        0
    ),
    (
         'new product ',
        600,
        'https://i.postimg.cc/jdcCKyk5/Rectangle-111.png',
        '{https://i.postimg.cc/vTQMSNyv/Rectangle-109.png,https://i.postimg.cc/NfjB6Sps/Rectangle-108.png,https://i.postimg.cc/Y9xBgzFL/Rectangle-107.png,https://i.postimg.cc/J7PWzKm9/Rectangle-106.png}',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        10.0,
        0,
        'Xiaomi',
        TRUE,
        4,
        2,
        FALSE,
        0,
        0
    ),
    (
        'product 7',
        450,
        'https://i.postimg.cc/jdcCKyk5/Rectangle-111.png',
        '{https://i.postimg.cc/vTQMSNyv/Rectangle-109.png,https://i.postimg.cc/NfjB6Sps/Rectangle-108.png,https://i.postimg.cc/Y9xBgzFL/Rectangle-107.png,https://i.postimg.cc/J7PWzKm9/Rectangle-106.png}',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        10.0,
        0,
        'SAMSUNG',
        TRUE,
        4,
        2,
        FALSE,
        0,
        0
    ),
    (
        'product 8',
        330,
        'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg',
        '{https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg,https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg}',
        '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz',
        '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz',
        50.0,
        0,
        'Acer',
        TRUE,
        NULL,
        1,
        FALSE,
        0,
        0
    ),
    (
        'prdocut 9',
        270,
        'https://i.postimg.cc/jdcCKyk5/Rectangle-111.png',
        '{https://i.postimg.cc/vTQMSNyv/Rectangle-109.png,https://i.postimg.cc/NfjB6Sps/Rectangle-108.png,https://i.postimg.cc/Y9xBgzFL/Rectangle-107.png,https://i.postimg.cc/J7PWzKm9/Rectangle-106.png}',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        60.0,
        0,
        'SAMSUNG',
        TRUE,
        2,
        2,
        FALSE,
        0,
        0
    ),
    (
        'product 10',
        900,
        'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg',
        '{https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg,https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg}',
        '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz',
        '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz',
        70.0,
        0,
        'Acer',
        TRUE,
        NULL,
        1,
        FALSE,
        0,
        0
    ),
    (
        'product 11',
        80,
        'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg',
        '{https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg,https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg}',
        '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz',
        '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz',
        70.0,
        5,
        'Acer',
        TRUE,
        NULL,
        5,
        FALSE,
        0,
        0
    ),
    (
        'product 12',
        610,
        'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg',
        '{https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg,https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg}',
        '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz',
        '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz',
        70.0,
        5.0,
        'Acer',
        TRUE,
        NULL,
        6,
        FALSE,
        0,
        0
    );

INSERT INTO
    reviews(
        comment,
        rate,
        user_id,
        product_id
    )
VALUES
    (
        'Amazing Product',
        3,
        1,
        1
    ),
    (
        'Beautiful Product',
        2,
        2,
        1
    ),
    (
        'Amazing Product',
        4,
        3,
        1
    ),
    (
        'Amazing Product',
        3,
        3,
        1
    ),
    (
        'Beautiful Product',
        2,
        2,
        1
    ),
    (
        'Not Perfect Product',
        1,
        1,
        2
    );
 
INSERT INTO
    carts(
    user_id ,
    product_id,
    quantity
    )
VALUES
    (
        1,
        1,
        2
    ),
    (
        1,
        2,
        1
    ),
    (
        2,
        3,
        5
    );
INSERT INTO
    wishlists(
        user_id,
        product_id
    )
VALUES
    (
        1,
        1
    ),
    (
        2,
        3
    ),
    (
        1,
        2
    );

INSERT INTO
    guests(
        name,
        email,
        phone,
        city,
        area,
        street,
        block,
        building
    )
VALUES
    (
        'guest1',
        'guest1@gmail.com',
        '+96551541564',
        'Kuwait',
        'First Residence Building', 
        'Kuwait Street', 
        3,
        11
    ),
    (
        'guest2',
        'guest2@gmail.com',
        '+96554716581',
        'Kuwait',
        'First Residence Building', 
        'Kuwait Street', 
        5,
        11
    );
INSERT INTO
    orders(
        products,
        amount,
        addresses,
        status,
        order_number,
        payment,
        promo_discount,
        shipping_cost,
        sub_total,
        user_id,
        guest_id
    )
VALUES
    (
        '{{1,2,50,40},{2,10,320,10},{3,5,11,15}}',
        300,
        '{Kuwait, First Residence Building, Kuwait Street, 2,10}',
        'pending',
        'scl245as',
        'Kent', 
        0,
        0,
        300,
        1,
        NULL 
    ),
    (
        '{{4,10,12,10},{1,1,3,10},{5,3,5,10}}',
        500,
        '{Kuwait, First Residence Building, Kuwait Street, 2,10}',
        'complete',
        'scl245affs',
        'Kent',
        0,
        20,
        480,
        1,
        NULL 
    ),
    (
        '{{1,5,12,10},{4,2,20,30},{3,5,10,30}}',
        475,
        '{Kuwait,First Residence Building, Kuwait Street, 3,11}',
        'reject',
        'asv4524eg', 
        'Kent',
        5,
        200,
        300,
        NULL,
        2
    );

INSERT INTO
    brands(
      name,
      image,
      archived
    )
VALUES
    (
        'CANON',
        'https://global.canon/00cmn/img/common/ogp-logo.png',
        FALSE
    ),
    (
         'SAMSUNG',
        'https://bsmedia.business-standard.com/_media/bs/img/about-page/1562575696.png',
        FALSE
    ),
    (
         'MESTONIX',
        'https://rndproductsbd.com/assets/images/cl_logo3.png',
        FALSE
    ),
    (
        'SONY',
        'https://www.sony.co.jp/SonyInfo/CorporateInfo/img/sony-og.jpg',
        FALSE
    ),
    (
         'Xiaomi',
        'https://www.91-cdn.com/pricebaba-blogimages/wp-content/uploads/2021/09/Xiaomi-Logo.png',
        FALSE
    );
INSERT INTO
    banners(
      name,
      image
    )
VALUES
    (
        'banner1',
        'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg'
    ),
    (
         'banner2',
        'https://i.postimg.cc/jdcCKyk5/Rectangle-111.png'
    ),
    (
         'banner3',
        'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg'
    ),
    (
        'banner4',
        'https://i.postimg.cc/jdcCKyk5/Rectangle-111.png'
    ),
    (
         'banner5',
        'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg'
    );
INSERT INTO
    promo_codes(
      name,
      discount
    )
VALUES
    (
        'abc',
        5
    ),
    (
         'xyz',
        10
    );
