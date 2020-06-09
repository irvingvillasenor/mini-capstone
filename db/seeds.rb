Supplier.create!([
  {name: "Apple",
  email: "support@mac.com",
  phone_number: "888-234-5678"
  },
  {
  name: "Vintage Books",
  email: "books@vintage.com",
  phone_number: "800-333-1199"
  },
  {
    name: "Porsche",
    email: "porsche@gmail.com",
    phone_number: "877-993-2311"
  }
])

Product.create!([
  {name: "Desktop", price: "800.0", description: "Mac Pro", supplier_id: 1},
  {name: "Cell Phone", price: "1300.0", description: "iPhone 11", supplier_id: 1},
  {name: "Porsche 911", price: "205000.0", description: "Fast 6 cylinder engine coupe", supplier_id: 3},
  {name: "Book", price: "14.0", description: "Book about science and God", supplier_id: 2},
  {name: "Laptop", price: "1100.0", description: "Macbook Pro", supplier_id: 1}
])

Image.create!([
  {
    url: "https://www.macworld.co.uk/cmsdata/features/3678783/how-clear-desktop-mac_thumb800.jpg",
    product_id: 1
  },
  {
    url: "https://images.macrumors.com/article-new/2019/09/iphone11prolineup.jpg",
    product_id: 2
  },
  {
    url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-porsche-911-turbo-s-coupe-108-1586288423.jpg?crop=0.811xw:0.609xh;0.119xw,0.271xh&resize=1200:*",
    product_id: 3
  },
  {
    url: "https://images-na.ssl-images-amazon.com/images/I/81p-TOxVbxL.jpg",
    product_id: 4
  },
  {
    url: "https://i.pcmag.com/imagery/reviews/038Dr5TVEpwIv8rCljx6UcF-14.fit_scale.size_1028x578.v_1588802180.jpg",
    product_id: 5
  }
])