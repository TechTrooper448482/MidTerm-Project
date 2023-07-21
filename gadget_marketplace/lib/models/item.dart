class Gadgets {
  String product;
  List<String> imageUrl;
  String description;
  String specs;
  double price;
  double product_rating;
  int quantity;

  Gadgets(
      {required this.product,
      required this.imageUrl,
      required this.description,
      required this.specs,
      required this.price,
      required this.product_rating,
      required this.quantity});

  static Map<String, List<dynamic>> productList = {
    'PC': [
      Gadgets(
          product: "MacBook Air 15\"",
          imageUrl: [
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mba15-midnight-select-202306?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1684518479433",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mba15-starlight-select-202306?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1684518479450",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mba15-spacegray-select-202306?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1684518479428",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mba15-silver-select-202306?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1684518479266"
          ],
          description:
              "16-core Neural Engine\n 15.3-inch Liquid Retina display with True Tone \n 1080p FaceTime HD camera \n MagSafe 3 charging port \n Two Thunderbolt / USB 4 ports \n Magic Keyboard with Touch ID \n Force Touch trackpad \n 35W Dual USB-C Port Compact Power Adapter",
          specs:
              "8-Core CPU 10-Core GPU 8GB Unified Memory 256GB SSD Storagefootnote 16-core Neural Engine 15.3-inch Liquid Retina display with True Tone 1080p FaceTime HD camera MagSafe 3 charging port Two Thunderbolt  USB 4 ports Magic Keyboard with Touch ID Force Touch trackpad 35W Dual USB-C Port Compact Power Adapter",
          price: 1299.00,
          product_rating: 4.9,
          quantity: 0),
      Gadgets(
          product: "MacBook Pro 14",
          imageUrl: [
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp14-spacegray-select-202301?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1671304673229",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp14-silver-select-202301?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1671568460416"
          ],
          description:
              "16-core Neural Engine\n 14-inch Liquid Retina XDR display\n Three Thunderbolt 4 ports, HDMI port, SDXC card slot, headphone jack, MagSafe 3 port \n Magic Keyboard with Touch ID\n Force Touch trackpad\n 67W USB-C Power Adapter",
          specs:
              "10-Core CPU\n 16-Core GPU\n 16GB Unified Memory\n512GB SSD Storage",
          price: 1999,
          product_rating: 5.0,
          quantity: 0),
      Gadgets(
          product: "Zenbook Pro 14 Duo",
          imageUrl: [
            "https://shop.asus.com/media/catalog/product/5/d/5d03bfa310a23fb3907aa6650141c419_5.png?optimize=medium&bg-color=255,255,255&fit=bounds&height=439&width=439&canvas=439:439",
            "https://shop.asus.com/media/catalog/product/a/3/a3423813ba37d46202ab579a85963a48_7.png?optimize=medium&bg-color=255,255,255&fit=bounds&height=439&width=439&canvas=439:439",
            "https://shop.asus.com/media/catalog/product/7/f/7f26ec01719590a785df9d093683662e_7.png?optimize=medium&bg-color=255,255,255&fit=bounds&height=439&width=439&canvas=439:439",
            "https://shop.asus.com/media/catalog/product/5/e/5eca7966b740390b52face72a240a347_7.png?optimize=medium&bg-color=255,255,255&fit=bounds&height=439&width=439&canvas=439:439",
            "https://shop.asus.com/media/catalog/product/4/8/48df71b102b4f259faa7dc1c028b4bfe_7.png?optimize=medium&bg-color=255,255,255&fit=bounds&height=439&width=439&canvas=439:439"
          ],
          description:
              "Next-generation ScreenPad Plus: A 12.7-inch, full-width secondary touchscreen with re-engineered tilt mechanism AAS Ultra, which increases the angle of tilt for comfortable touch operation and reduces the visual separation between ScreenPad Plus and the main touchscreen \n ASUS Pen 2.0 stylus support with 4096 pressure levels, four interchangeable pen tips and fast USB-C charging\n Latest 13th generation Intel® Core™ i9-13900H Processor 2.6 GHz (24MB Cache, up to 5.4 GHz, 14 cores, 20 Threads) and Intel Iris Xe graphics",
          specs:
              "Operating System: Windows 11 Home\n PC-Processor: Intel Core i9-13900h\n Memory: 32GB\n Storage:1 TB SSD\n Graphic Card: NVIDIA GeForce RTX 4060 8GB GDDR6",
          price: 2399.99,
          product_rating: 4.6,
          quantity: 0),
    ],
    'Phone': [
      Gadgets(
          product: "Xperia 1 V",
          imageUrl: [
            "https://d13o3tuo14g2wf.cloudfront.net/thumbnails%2Flarge%2FAsset+Hierarchy%2FConsumer+Assets%2FMobile+Phones%2FXperia+Series%2FXperia+1+V%2FeComm+Product+Images%2FB%2F01-Xperia+1+V_sub6_group_black.png.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9kMTNvM3R1bzE0ZzJ3Zi5jbG91ZGZyb250Lm5ldC90aHVtYm5haWxzJTJGbGFyZ2UlMkZBc3NldCtIaWVyYXJjaHklMkZDb25zdW1lcitBc3NldHMlMkZNb2JpbGUrUGhvbmVzJTJGWHBlcmlhK1NlcmllcyUyRlhwZXJpYSsxK1YlMkZlQ29tbStQcm9kdWN0K0ltYWdlcyUyRkIlMkYwMS1YcGVyaWErMStWX3N1YjZfZ3JvdXBfYmxhY2sucG5nLnBuZyIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MjE0NTc2MjAwMH19fV19&Signature=DGvzzsxCCeyjwALhqFrJZSCO0jIquOkglaLNnf-C2fnjeIHQshnJPJRXl9rqP7g85xsVFnFBdLls~xPtEEOrH723FsyVYfzFNuPupJb2~l3FLCvN4M839TW3lb~WA~bBvzIhtFt~w1dboP8VOT12KRb8Sel~dFt4JgjvmIRgrWARJe-Eg3bZwIqWfVv-UeTd-gfT6NheGBu~m4vH6AE4Z8dG~A~Dzcl59Q-g6C4gn~qbI9XqC~NwBBx68GOPNYwux-DtLgb48jlI-08odQ4q92w~FraL9j5pyNWjFc5xlBPlyPDTovjGugd7RP2Kob43n5VlzBb2UAMqSQq~Du7T7g__&Key-Pair-Id=K37BLT9C6HMMJ0",
            "https://d13o3tuo14g2wf.cloudfront.net/thumbnails%2Flarge%2FAsset+Hierarchy%2FConsumer+Assets%2FMobile+Phones%2FXperia+Series%2FXperia+1+V%2FeComm+Product+Images%2FB%2F02-Xperia+1+V_sub6_back_black.png.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9kMTNvM3R1bzE0ZzJ3Zi5jbG91ZGZyb250Lm5ldC90aHVtYm5haWxzJTJGbGFyZ2UlMkZBc3NldCtIaWVyYXJjaHklMkZDb25zdW1lcitBc3NldHMlMkZNb2JpbGUrUGhvbmVzJTJGWHBlcmlhK1NlcmllcyUyRlhwZXJpYSsxK1YlMkZlQ29tbStQcm9kdWN0K0ltYWdlcyUyRkIlMkYwMi1YcGVyaWErMStWX3N1YjZfYmFja19ibGFjay5wbmcucG5nIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoyMTQ1NzYyMDAwfX19XX0_&Signature=bK3J4pTS0oHZMUAL00VjQMsY3wmrRArAQXASYF2PhMIUfNWzgXaAB-KdGjSpeTXaP~naMYWeTfR0ln~X-5XDHC8rQ-b5YAXyaaokal2b3sOQ962CrpX1xgUAcZ2QU9n9g-tYzhfgW6Sb30ORzlMXcnUGjkYTXcGXdeTI1VwliyCYHi0UXKoCKIaLSNLHrTfnlI1zgyrmoPy-qEeykEq9J52B0P4AqoftkQ1SxIxBl1iypqL1gzhVr~uVzCLEMM3QsGunbFxV7p~ImWPqeVa3Oh7~6EkMEcILPjBEalyiI15p9Ngsti5yG13GbK2wq0QhnASoMjIsU3twnmrXqxEFog__&Key-Pair-Id=K37BLT9C6HMMJ0",
            "https://d13o3tuo14g2wf.cloudfront.net/thumbnails%2Flarge%2FAsset+Hierarchy%2FConsumer+Assets%2FMobile+Phones%2FXperia+Series%2FXperia+1+V%2FeComm+Product+Images%2FG%2F01-Xperia+1+V_sub6_group_khakiGreen.png.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9kMTNvM3R1bzE0ZzJ3Zi5jbG91ZGZyb250Lm5ldC90aHVtYm5haWxzJTJGbGFyZ2UlMkZBc3NldCtIaWVyYXJjaHklMkZDb25zdW1lcitBc3NldHMlMkZNb2JpbGUrUGhvbmVzJTJGWHBlcmlhK1NlcmllcyUyRlhwZXJpYSsxK1YlMkZlQ29tbStQcm9kdWN0K0ltYWdlcyUyRkclMkYwMS1YcGVyaWErMStWX3N1YjZfZ3JvdXBfa2hha2lHcmVlbi5wbmcucG5nIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoyMTQ1NzYyMDAwfX19XX0_&Signature=LH2jwF4NKyCvYx6CH3o0JoNT9EpHSergOWV5JZc~1obZxdHk6TaAKhEFMYch1myyUZLt~6pxkbghwyD5MD3itIozX9ZITe2VfscYIpH6XTp0YNGs33N~O5V6wgmsnG3xvzVCc2KNhEZd8u8IzdXuXeZ190BbTPrZMBR0zLbyaA3x6Mq5I-ovVjW9feNFrzsxJfEWI8M697-lVsrdeAz0plE-aPhp4plgnZJLI-59BkY-9aC1QOzo5WwSl~p9NXhbdvrmt5-f5qJYJizWrov5eSOte8qtbmpcfKiO3SqrCPyhpgmv4mfE7DPmtfJ7y2A8yrh5awt9HFfPnSU96WZdxQ__&Key-Pair-Id=K37BLT9C6HMMJ0",
            "https://d13o3tuo14g2wf.cloudfront.net/thumbnails%2Flarge%2FAsset+Hierarchy%2FConsumer+Assets%2FMobile+Phones%2FXperia+Series%2FXperia+1+V%2FeComm+Product+Images%2FG%2F02-Xperia+1+V_sub6_back_khakiGreen.png.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9kMTNvM3R1bzE0ZzJ3Zi5jbG91ZGZyb250Lm5ldC90aHVtYm5haWxzJTJGbGFyZ2UlMkZBc3NldCtIaWVyYXJjaHklMkZDb25zdW1lcitBc3NldHMlMkZNb2JpbGUrUGhvbmVzJTJGWHBlcmlhK1NlcmllcyUyRlhwZXJpYSsxK1YlMkZlQ29tbStQcm9kdWN0K0ltYWdlcyUyRkclMkYwMi1YcGVyaWErMStWX3N1YjZfYmFja19raGFraUdyZWVuLnBuZy5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjIxNDU3NjIwMDB9fX1dfQ__&Signature=j3xSU7XI38OdtDZ4K-kmWaHbr3PE4fFnroNzZUFkZsb5HZhGjMjj5xfntRvmT01hV9t-JjS-zYK8J0YLn0wpCuaSbsB3dT6N35fQUfmKJeZqCBlfBkFJnaqIVLZY9qQkzchGhiE4GwGjCEPYYTDpA3xDCROS4F17TJbh8ZLM9c2D7PPduosH3XbXnXBFDx-DRGM0EaEQhrlilEGNF3TidJVNKiON4sDBED~tU~Nig-80AsglTNVhy7QHc7viDFnQYv~G9xnWGHUhv8lsdyeFNRWp0AiGJ7~6fzu9H7Lf~bE58YiK7NkriTREymMUIEbQnp5iKr8yZmdF474IyoVi5w__&Key-Pair-Id=K37BLT9C6HMMJ0"
          ],
          description:
              "Bright 6.5” 21:9 4K HDR OLED 120Hz3 wide display with improved Real-time HDR Drive. \n 4K HDR native 120fps video recording on all rear lenses 12GB RAM, 256GB ROM plus Micro-SD media slot, 5000mAh battery \n ",
          specs:
              "OS \t Android™ 13 (T)\n CPU \t Snapdragon® 8 Gen2 \n RAM\t 12GB \n ROM \t 256GB \n Speakers \t Stereo \n Dolby Atmos® \n ppi \t 643ppi \n REFRESH RATE \t 120Hz \n Battery \t 5000mAh   ",
          price: 1399.99,
          product_rating: 4.5,
          quantity: 0),
      Gadgets(
          product: "iPhone 14 Pro Max",
          imageUrl: [
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-finish-select-202209-6-7inch-deeppurple?wid=2560&hei=1440&fmt=p-jpg&qlt=80&.v=1663703841896",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-finish-select-202209-6-7inch-gold?wid=2560&hei=1440&fmt=p-jpg&qlt=80&.v=1663703841907",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-finish-select-202209-6-7inch-silver?wid=2560&hei=1440&fmt=p-jpg&qlt=80&.v=1663703841892",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-finish-select-202209-6-7inch-spaceblack?wid=2560&hei=1440&fmt=p-jpg&qlt=80&.v=1663703841897"
          ],
          description:
              "Dynamic Island bubbles up music, sports scores, phone calls, and so much more — without taking you away from what you\’re doing.\n The new Photonic Engine preserves even more image data to deliver brighter, more lifelike colors and beautifully detailed textures — in much less light. \n With iOS 16, your personalized Lock Screen is always glanceable, so you don’t have to tap to see your favorite widgets like Weather, Calendar, or Lunar Phase.",
          specs:
              "Display: 6.7 inch\n Storage: 256 GB \n Camera: Pro camera system 48MP Main | Ultra Wide Telephoto Photonic Engine for incredible detail and color Autofocus on TrueDepth front camera\n Battery: upto 29 hrs \n Chipset: A16 Bionic chip",
          price: 1199,
          product_rating: 4.9,
          quantity: 0),
    ],
    'Gaming': [
      Gadgets(
          product: "PlayStation®5 Console",
          imageUrl: [
            "https://media.direct.playstation.com/is/image/sierialto/PS5-front-with-dualsense?",
            "https://media.direct.playstation.com/is/image/sierialto/PS5-laying-down-flat?",
            "https://media.direct.playstation.com/is/image/sierialto/PS5-box-shot?",
            "https://media.direct.playstation.com/is/image/sierialto/playstation-5-standard-box-contents?"
          ],
          description:
              "Haptic Feedback Responsive vibrations react to your in‑game choices and simulate environmental factors in select PS5 games.\n Capture your gameplay and share it with others on PlayStation™ Network or select social media apps. \n Harness the might of a custom CPU, GPU, and SSD with Integrated I/O that rewrite the rules of what a PlayStation console can do. \n Smooth and fluid high frame rate gameplay at up to 120fps for compatible games, with support for 120Hz output on 4K displays.",
          specs:
              "Storage: 825GB SSD \n Haptic Feedback, 3D Audio,Adaptive Triggers",
          price: 499.99,
          product_rating: 4.5,
          quantity: 0),
      Gadgets(
          product: "Xbox Series X",
          imageUrl: [
            "https://assets.xboxservices.com/assets/fb/d2/fbd2cb56-5c25-414d-9f46-e6a164cdf5be.png?n=XBX_A-BuyBoxBGImage01-D.png",
            "https://assets.xboxservices.com/assets/b2/51/b2518691-0175-4bf4-8c2e-9086e8a2c2db.png?n=XBX_A-BuyBoxBGImage02-D.png",
            "https://assets.xboxservices.com/assets/39/66/39663ac6-e98d-44ce-8fc1-f15a796fe6d6.png?n=XBX_A-BuyBoxBGImage03-D.png",
            "https://assets.xboxservices.com/assets/13/85/138560bf-8a3b-47d2-b32c-ab5a053a25ab.png?n=XBX_A-BuyBoxBGImage04-D.png"
          ],
          description:
              "The sleek monolithic design of Xbox Series X is the result of combining hardware and software innovations with intentional engineering to achieve the zenith of speed and performance.\n New generation console. New generation games. Embark on new adventures the way they’re meant to be experienced on the Xbox Series X.",
          specs:
              "Display: 4k\n Refresh Rate: 120hz\n Audio: Dolby Atmos\n Storage: 1TB + Expandable to 1TB",
          price: 499.99,
          product_rating: 4.4,
          quantity: 0)
    ],
    'Headphones': [
      Gadgets(
          product: "Sony XM5 ",
          imageUrl: [
            "https://d13o3tuo14g2wf.cloudfront.net/thumbnails%2Flarge%2FAsset+Hierarchy%2FConsumer+Assets%2FAccessories%2FHeadphones%2FEarbuds%2F2022%2FWH-1000XM5%2FProduct+Images%2FBlack%2FeComm%2F1+WH-1000XM5_standard_black.png.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9kMTNvM3R1bzE0ZzJ3Zi5jbG91ZGZyb250Lm5ldC90aHVtYm5haWxzJTJGbGFyZ2UlMkZBc3NldCtIaWVyYXJjaHklMkZDb25zdW1lcitBc3NldHMlMkZBY2Nlc3NvcmllcyUyRkhlYWRwaG9uZXMlMkZFYXJidWRzJTJGMjAyMiUyRldILTEwMDBYTTUlMkZQcm9kdWN0K0ltYWdlcyUyRkJsYWNrJTJGZUNvbW0lMkYxK1dILTEwMDBYTTVfc3RhbmRhcmRfYmxhY2sucG5nLnBuZyIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MjE0NTc2MjAwMH19fV19&Signature=dQbD17qiwNFZmA-o2EbuPsAIUkNgmclJSXU9q7eeoQAszZ8xdo0OpYqIiSP8EonF1NDrympe2~4d3fJXwc95DiR5cVTGxdWhfDkBey2F0k0cb4Qv6joezCiGAR7GZf3HI3REaSUI0~BWbqUVBguKWGUsjavvjbOayO6-jrqwu1D2h5T29CWrT8rGo~XG5KOgyuqYIqpxKPJ9U481wcU3pCBwzAfue-Ru6NCHhd-Y4-B7I93uvdbwH4qfSQh3iVM8oAi9ZjptYSaGPqiLlAP-P9zOHtK1riyyGDiq9ANMoqId5lp0tBqe1E9X40tnF6ZT~gUspuALI4yS8OZ~Nhu2rg__&Key-Pair-Id=K37BLT9C6HMMJ0",
            "https://d13o3tuo14g2wf.cloudfront.net/thumbnails%2Flarge%2FAsset+Hierarchy%2FConsumer+Assets%2FAccessories%2FHeadphones%2FEarbuds%2F2022%2FWH-1000XM5%2FProduct+Images%2FBlue%2FeComm%2F1_WH-1000XM5_standard_midnightblue.png.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9kMTNvM3R1bzE0ZzJ3Zi5jbG91ZGZyb250Lm5ldC90aHVtYm5haWxzJTJGbGFyZ2UlMkZBc3NldCtIaWVyYXJjaHklMkZDb25zdW1lcitBc3NldHMlMkZBY2Nlc3NvcmllcyUyRkhlYWRwaG9uZXMlMkZFYXJidWRzJTJGMjAyMiUyRldILTEwMDBYTTUlMkZQcm9kdWN0K0ltYWdlcyUyRkJsdWUlMkZlQ29tbSUyRjFfV0gtMTAwMFhNNV9zdGFuZGFyZF9taWRuaWdodGJsdWUucG5nLnBuZyIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MjE0NTc2MjAwMH19fV19&Signature=ewGrPO-0XUn2TAWlLLNXBsKm52K4fBP9Zvq2is7B2dn8BdkgyB5QVJf3og~4-tJeOK4fTSxPGLCYn9EHF245Ya1-J7~OX5TfdUehSzoI7CRLjEhHkSl-FulhZKnDBc52MyIbKyiB1hIe5LP2kVu62cYRzwrqljlGZ2gLmM-fGnaI~HYnt3e5-bYOgUSmx7s8ywGmrhtDYt1y19z7DxY2Cw1L0skFGYoZg51q0UgCKEuBUBOIAJ~aa7aXdFk3K3iIg~~-dYbu6EADiddRg9kbNecdkICLPt5Loax3Uc22BB0s3vLKEvprTaImt7vOit64NHmOloBQwUGQZwp70bqg5Q__&Key-Pair-Id=K37BLT9C6HMMJ0",
            "https://d13o3tuo14g2wf.cloudfront.net/thumbnails%2Flarge%2FAsset+Hierarchy%2FConsumer+Assets%2FAccessories%2FHeadphones%2FEarbuds%2F2022%2FWH-1000XM5%2FProduct+Images%2FSilver%2FeComm%2F1+WH-1000XM5_standard_silver.png.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9kMTNvM3R1bzE0ZzJ3Zi5jbG91ZGZyb250Lm5ldC90aHVtYm5haWxzJTJGbGFyZ2UlMkZBc3NldCtIaWVyYXJjaHklMkZDb25zdW1lcitBc3NldHMlMkZBY2Nlc3NvcmllcyUyRkhlYWRwaG9uZXMlMkZFYXJidWRzJTJGMjAyMiUyRldILTEwMDBYTTUlMkZQcm9kdWN0K0ltYWdlcyUyRlNpbHZlciUyRmVDb21tJTJGMStXSC0xMDAwWE01X3N0YW5kYXJkX3NpbHZlci5wbmcucG5nIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoyMTQ1NzYyMDAwfX19XX0_&Signature=YyKd17BfLHimYGf4FH8EYLY68kVsxAT~Gf4i03TIyLVI0gtjWmwSW97tt8d3v5dvm1q4KI4o71zFR8SXPtCqt6Axso~8wOUtSQihSduWOsU2hYKL0plJSIfVEg27GnsZvECJFXLKoW2vHPto2DCsdnr3r2nDwZ0LSswfzPRpomol5iE1hkU2U4GvdwPL0K0SZHFIfuSLOK7fU-MIVlkYWd0mYCnybd02TgtHafkRrl-DLlB1GwoPk7ATYkR7g7rHO4HeF~VGH-Z~NTJ-zFNP8jQ9nMTCHcKi2fsAlr6PgkKSIzYzLZdpiG3iJRpRZKkufyjRbuODQvAd6~lBSXp1cw__&Key-Pair-Id=K37BLT9C6HMMJ0"
          ],
          description:
              "WH-1000XM5 headphones feature intuitive touch control settings \n For everyday convenience, just Speak-to-Chat and Quick Attention mode stop your music and let in ambient sound\n Instant pause. Instant play.",
          specs:
              "Battery Timing Max.24hrs (NC ON) \n Charge Time \t Approx 3.5hrs\n Bluetooth \t version 5.2\n Range \t 32.81ft\n Noise Cancellation \t Yes",
          price: 399.99,
          product_rating: 4.6,
          quantity: 0),
      Gadgets(
          product: "AirPods Max",
          imageUrl: [
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/airpods-max-select-spacegray-202011?wid=470&hei=556&fmt=png-alpha&.v=1604709508000",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/airpods-max-select-pink-202011?wid=470&hei=556&fmt=png-alpha&.v=1604022365000",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/airpods-max-select-green-202011?wid=470&hei=556&fmt=png-alpha&.v=1604022364000",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/airpods-max-select-silver-202011?wid=470&hei=556&fmt=png-alpha&.v=1604021221000",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/airpods-max-select-skyblue-202011?wid=470&hei=556&fmt=png-alpha&.v=1604022365000"
          ],
          description:
              "Personalized Spatial Audio with dynamic head tracking \n Active Noise Cancellation and Transparency mode\n Up to 20 hours of listening time with a single charge\n Smart Case ",
          specs:
              "Spatial Audio \n ANC: Active Noise Cancellation\n Battery: 20 hrs",
          price: 549.00,
          product_rating: 4.3,
          quantity: 0),
    ],
    'Tablets': [
      Gadgets(
          product: "Galaxy Tab S8 Ultra",
          imageUrl: [
            "https://image-us.samsung.com/us/galaxy-tab-s8/configurator/02-TabS8-Ultra-KV-Configurator-DT-633x475.jpg",
            "https://image-us.samsung.com/SamsungUS/PIM/SDSAC-4790-Sustainability-TabS8F-DT-720x540.jpg"
          ],
          description:
              "Get lost in what you love and unleash your imagination with an ultra-large sAMOLED tablet that's the first of its kind. Your movies and content come to life in vivid detail like never before on an expansive 14.6\"sAMOLED screen. Now you have the power to game or edit videos in ultra-smooth clarity,thanks to a 120Hz refresh rate.You'll feel closer to the action when you hear every thrilling detail on quad speakers and rich Dolby Atmos surround sound tuned by AKG. Plus, discover new ways to boost productivity with an ultra-dynamic multi-window display that puts everything you need on one screen. With so many great capabilities, this screen simply must be experienced to be believed.",
          specs:
              "Connectivity\t Wi-Fi 6 , Bluetooth v5.0 \n Battery \t11,200mAh \n RAM + Storage \t 12GB (RAM) + 256GB \n Processor \t Qualcomm Snapdragon 8 Gen 1\n Display\t 14.6\" Super AMOLED   ",
          price: 1199.99,
          product_rating: 4.8,
          quantity: 0),
      Gadgets(
          product: "iPad Pro",
          imageUrl: [
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-finish-select-202212-12-9inch-space-gray?wid=2560&hei=1440&fmt=p-jpg&qlt=95&.v=1667595007854",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-finish-select-202212-12-9inch-space-gray_AV1?wid=2560&hei=1440&fmt=p-jpg&qlt=95&.v=1667595008716",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-finish-select-202212-12-9inch-silver?wid=2560&hei=1440&fmt=jpeg&qlt=95&.v=1667595007333",
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-finish-select-202212-12-9inch-silver_AV1?wid=2560&hei=1440&fmt=jpeg&qlt=95&.v=1667595003455"
          ],
          description:
              "12.9” Liquid Retina XDR display Best and brightest.\n Cameras Capture and connect On a deeper level\n The LiDAR Scanner measures how long it takes light to reflect back from objects, so it can create a depth map of any space you’re in and unlock immersive AR experiences.",
          specs:
              "Display: 12.9 inch\n Camera: Luidar, 12MP,10MP..\n Connectivity: Wi-Fi6E, 5G\n Sotrage: 512GB",
          price: 1399.00,
          product_rating: 4.9,
          quantity: 0)
    ]
  };
}
