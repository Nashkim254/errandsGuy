class ServicesInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

 ServicesInfo(
    this.position, {
    this.name,
    this.iconImage,
    this.description,
    this.images,
  });
}

List<ServicesInfo> services = [
  ServicesInfo(1,
      name: 'Banking & Utilities',
      iconImage: 'lib/assets/images/money.png',
      description:
          "Many banks in Kenya operate between 8 am and 4 pm, except for the main branches that extend to 6pm. If you are busy within this hours, ErrandsGuy will help you collect payments, cash cheques, and other banking errands in Nairobi, Kisumu, Mombasa, Nakuru and any other town in Kenya. We have access to all banks in Kenya regardless of their size or distribution of branches. Let us help you run banking errands through the week while banks are open. Save your valuable time with us .",
      images: [
        'lib/assets/images/product.png',
      ]),
  ServicesInfo(2,
      name: 'Shopping Errands',
      iconImage: 'lib/assets/images/shopping.png',
      description:
          "We maintain the price comparisons for the top ten supermarkets in Kenya. We also keep track of discounts and offers in different supermarkets and marketplaces, all in an organized way for your convenience. Do you eed help with shopping for food items and other merchandise or doorstep deliveries? Book a shopping errand anywhere in Nairobi, Mombasa, Nakuru, and Kakamega and we deliver it at your doorstep. Order, relax, and wait! ",
      images: [
        'lib/assets/images/shoppingbag.png',
        'lib/assets/images/product1.png',
      ]),
  ServicesInfo(3,
      name: 'Delivery Services',
      iconImage: 'lib/assets/images/delivery1.png',
      description:
          "ErrandsGuy offers a fast and reliable way to deliver goods to your doorstep. We serve individuals, small and medium business in Nairobi or other towns in Kenya, we will help you save time and money. Book a delivery services errand and wait for us to serve you. We help enhance customer experience for businesses on Brick and Mortar such as small supermarkets, shops, or online sellers on websites, WhatsApp, Instagram or Facebook. If you want help in package valentine’s gifts and flowers or any other items that are sensitive or confidential for spouses and loved ones, book an errand. .",
      images: [
        'lib/assets/images/delivery.png',
        'lib/assets/images/product2.png',
        'lib/assets/images/errandsguy.jpg',
      ]),
  ServicesInfo(4,
      name: 'CustomizedServices',
      iconImage: 'lib/assets/images/custom.png',
      description:
          "Get assistance in document attestation, clearance of school certificates, attending meetings as a proxy, taking your vehicle for servicing, development of business plans, search of valuable items, and other tasks. We can also find reputed pest-control, agricultural extension services, landscape architecture, house movers, interior decoration, furniture delivery, find a house in Nairobi, and other professional services at an affordable cost. We have all the experts you will need in Nairobi or other parts of Kenya. . ",
      images: []),
  ServicesInfo(5,
      name: 'Diaspora Errands',
      iconImage: 'lib/assets/images/onboarding2.png',
      description:
          "Living away from home limits the level of activity you can handle remotely. ErrandsGuy will help you handle all kinds of tasks, including search for land, valuation and price estimations, document handling, proxy services, registration of companies or businesses in Kenya, collection of payments and cheque deposits among others. We have a vast network of errands runners in Nairobi and other parts of Kenya. Reach out to us for a personalized experience. .",
      images: []),
  ServicesInfo(6,
      name: 'Register Company',
      iconImage: 'lib/assets/images/sme1.png',
      description:
          "Starting a business can be challenging. ErrandsGuy professionals have helped many clients select the right type of company or business, providing the advice that prevents legal repercussions or potential losses, fines, and inefficiencies. We work with lawyers to and certified accountants to guarantee the quality of advice provided to clients. Let us help with accounting/bookkeeping, filing of taxes, and obtaining/renewal of business permits for your company. We do all these at an affordable cost. .",
      images: []),
  ServicesInfo(7,
      name: 'Filling Returns',
      iconImage: 'lib/assets/images/unnamed.png',
      description:
          "We help individuals and SMEs file taxes in the easiest and fastest way. We will help with your tax-related fines and help you obtain tax waivers or claim refunds. Employees can upload their p9 forms and other related documents to make the work faster. We work with legal minds and accountants to ensure that you are safe and free from liability. We are trusted by our clients because of our professionalism and confidentiality. Let us handle your taxes.",
      images: []),
  ServicesInfo(8,
      name: 'Pay LandRates',
      iconImage: 'lib/assets/images/visited.png',
      description:
          "Land issues are a big problem in Kenya. Get the best advice on land-related issues, pay your land rates and other related charges with our assistance. ErrandsGuy will help you process and pay for your land rates/rent in accordance with the national and local government regulations. We serve as proxies in land negotiations and helping you in valuation. Talk to us for expert services.",
      images: []),
  ServicesInfo(9,
      name: 'BookKeeping',
      iconImage: 'lib/assets/images/book.png',
      description:
          "The 2020/21 finance budget by the Ministry of Finance in Kenya enforces taxation on online businesses. ErrandsGuy helps SMEs and startups understand finances, taxes, and profit margins through accounting by certified accountants: .",
      images: []),
  ServicesInfo(10,
      name: 'SocialMedia',
      iconImage: 'lib/assets/images/twit.png',
      description:
          "First impressions last. SMEs and Startups that cannot afford to hire full-time digital marketing specialists, let us help your business build a great first impression for customers. ErrandsGuy provides support for both on social Media and on your website by optimizing your website and brand image and ranking. Choose your package and contact us/Book an errand.  .",
      images: []),
  ServicesInfo(11,
      name: 'Branding',
      iconImage: 'lib/assets/images/logo.png',
      description:
          "Grow your company's brand at affordable rates and get value for money. We have some of the best graphic designers. The quality of design and creativity of ErrandsGuy designers will make your brand stand out. Choose your package and contact us/Book an errand.  .",
      images: []),
  ServicesInfo(12,
      name: 'Covid-19',
      iconImage: 'lib/assets/images/therm.png',
      description:
          "Covid-19 errand support.",
      images: []),
];