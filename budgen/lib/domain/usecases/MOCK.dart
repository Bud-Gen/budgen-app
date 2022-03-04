import 'package:budgen/domain/entities/project.dart';

Map<String, dynamic> MOCK_JSON = {
  "items": [
    {
      "code": "38d1f53c-4678-4c6e-8ade-c0bcd78f461a",
      "name": "Batata",
      "description": "2-822 - Ornamental Metal Fences and Gates",
      "price": 52.58,
      "path": "Aluminum",
      "imageUrl":
          "https://opinioescertificadas.com.br/wp-content/uploads/2020/10/shutterstock_1590674887-1.jpg"
    },
    {
      "code": "516c05d5-8e26-4ac8-84a1-c631c15f8372",
      "name": "Batata",
      "description": "9-680 - Carpet",
      "price": 34.04,
      "path": "Rubber",
      "imageUrl":
          "https://opinioescertificadas.com.br/wp-content/uploads/2020/10/shutterstock_1590674887-1.jpg"
    },
    {
      "code": "8a5d6937-4460-4cc8-8896-11cf32354dee",
      "name": "Compactor",
      "description": "3-500 - Cementitious Decks and Underlayments",
      "price": 24.45,
      "path": "Granite",
      "imageUrl":
          "https://opinioescertificadas.com.br/wp-content/uploads/2020/10/shutterstock_1590674887-1.jpg"
    },
    {
      "code": "6a96f453-2e35-45ef-aa0d-8235e853f145",
      "name": "Bulldozer",
      "description": "7-200 - Thermal Protection - Insulation",
      "price": 43.34,
      "path": "Glass",
      "imageUrl":
          "https://robohash.org/quibusdamperferendisconsequuntur.png?size=50x50&set=set1"
    },
    {
      "code": "bf7b2261-6847-4e95-a0c9-1fbe527b897c",
      "name": "Backhoe",
      "description": "2-820 - Fences and Gates",
      "price": 91.4,
      "path": "Wood",
      "imageUrl": "https://robohash.org/namvelea.png?size=50x50&set=set1"
    },
    {
      "code": "4fcf6315-75ad-4d4a-bdd5-54e4d09e9b37",
      "name": "Excavator",
      "description": "10-250 - Service Walls",
      "price": 93.13,
      "path": "Glass",
      "imageUrl": "https://robohash.org/doloreiuslabore.png?size=50x50&set=set1"
    },
    {
      "code": "79164881-a4f9-4f42-840a-11705ccfbaec",
      "name": "Trencher",
      "description": "13-260 - Sludge Conditioning Systems",
      "price": 84.99,
      "path": "Wood",
      "imageUrl":
          "https://robohash.org/voluptatesrepellatdelectus.png?size=50x50&set=set1"
    },
    {
      "code": "8b03c001-fb55-463e-94f7-90897a58fc03",
      "name": "Skid-Steer",
      "description": "2-821 - Chain Link Fences",
      "price": 29.16,
      "path": "Plexiglass",
      "imageUrl": "https://robohash.org/etoptioquia.png?size=50x50&set=set1"
    },
    {
      "code": "a2df0578-d739-428e-ba5c-3fa44d087167",
      "name": "Scraper",
      "description": "13-185 - Kennels and Animal Shelters",
      "price": 67.28,
      "path": "Wood",
      "imageUrl": "https://robohash.org/aliquidetvel.png?size=50x50&set=set1"
    },
    {
      "code": "646e51d8-6c9c-4b9f-92ae-a1b5288dd3fc",
      "name": "Dragline",
      "description": "6-200 - Finish Carpentry",
      "price": 80.42,
      "path": "Steel",
      "imageUrl": "https://robohash.org/harumnonautem.png?size=50x50&set=set1"
    },
    {
      "code": "f046e509-4388-4b2f-948f-3edd6eac1705",
      "name": "Backhoe",
      "description": "8-600 - Skylights",
      "price": 71.07,
      "path": "Rubber",
      "imageUrl":
          "https://robohash.org/maioressitlaboriosam.png?size=50x50&set=set1"
    },
    {
      "code": "af1061b9-f8db-459b-b0ca-3ceeec9fb610",
      "name": "Crawler",
      "description": "6-600 - Plastic Fabrications",
      "price": 34.36,
      "path": "Wood",
      "imageUrl":
          "https://robohash.org/estsimiliquedolorem.png?size=50x50&set=set1"
    },
    {
      "code": "ef40dc68-fa79-42d6-8268-6158c3ed6045",
      "name": "Scraper",
      "description": "7-200 - Thermal Protection - Insulation",
      "price": 84.69,
      "path": "Plexiglass",
      "imageUrl":
          "https://robohash.org/quamsequisapiente.png?size=50x50&set=set1"
    },
    {
      "code": "376c0159-4a19-43dd-a770-8ec48e169d06",
      "name": "Dragline",
      "description": "1-013 - Project Coordinator",
      "price": 89.27,
      "path": "Plastic",
      "imageUrl":
          "https://robohash.org/exercitationemiustodeleniti.png?size=50x50&set=set1"
    },
    {
      "code": "f73631b0-c8a2-4fea-8c37-4b6675ff115b",
      "name": "Grader",
      "description": "13-280 - Hazardous Material Remediation",
      "price": 69.0,
      "path": "Wood",
      "imageUrl":
          "https://robohash.org/excepturinonmaxime.png?size=50x50&set=set1"
    },
    {
      "code": "58859cd8-9b6c-4c8d-b793-f806ff00e659",
      "name": "Excavator",
      "description": "9-700 - Wall Finishes",
      "price": 51.32,
      "path": "Vinyl",
      "imageUrl":
          "https://robohash.org/mollitiaoditoptio.png?size=50x50&set=set1"
    },
    {
      "code": "aaa29e01-cbe6-4b8f-8889-d0d083b43576",
      "name": "Grader",
      "description": "10-670 - Storage Shelving",
      "price": 72.5,
      "path": "Rubber",
      "imageUrl":
          "https://robohash.org/quaesaepenesciunt.png?size=50x50&set=set1"
    },
    {
      "code": "dafbaeb6-72ee-47f0-9342-e2fb3f3c4543",
      "name": "Dump Truck",
      "description": "11-130 - Audio-Visual Equipment",
      "price": 34.92,
      "path": "Rubber",
      "imageUrl":
          "https://robohash.org/reiciendisodioexercitationem.png?size=50x50&set=set1"
    },
    {
      "code": "e30cbf38-127d-44a5-9ed8-9a5f2e505f04",
      "name": "Excavator",
      "description": "1-550 - Vehicular Access and Parking",
      "price": 93.05,
      "path": "Plexiglass",
      "imageUrl": "https://robohash.org/etiureut.png?size=50x50&set=set1"
    },
    {
      "code": "6ba86555-e356-4927-a095-ad02da44af3d",
      "name": "Dump Truck",
      "description": "10-100 - Visual Display Boards",
      "price": 22.0,
      "path": "Wood",
      "imageUrl": "https://robohash.org/etconsequaturet.png?size=50x50&set=set1"
    },
    {
      "code": "b7a8af64-b875-43af-87df-013f304944c1",
      "name": "Backhoe",
      "description": "3-350 - Concrete Finishing",
      "price": 12.88,
      "path": "Granite",
      "imageUrl": "https://robohash.org/fugitnatusomnis.png?size=50x50&set=set1"
    },
    {
      "code": "3baf714c-1210-47f4-9122-59f066166d53",
      "name": "Excavator",
      "description": "10-880 - Scales",
      "price": 41.52,
      "path": "Aluminum",
      "imageUrl":
          "https://robohash.org/rationealiasvoluptatem.png?size=50x50&set=set1"
    },
    {
      "code": "28bd8aa2-fe7e-4b47-91a0-d790c55a91ab",
      "name": "Skid-Steer",
      "description": "14-100 - Dumbwaiters",
      "price": 50.17,
      "path": "Aluminum",
      "imageUrl":
          "https://robohash.org/numquamoccaecativel.png?size=50x50&set=set1"
    },
    {
      "code": "352a1b47-36d5-479f-994a-e576f149c06b",
      "name": "Crawler",
      "description": "5-800 - Expansion Control",
      "price": 57.34,
      "path": "Rubber",
      "imageUrl":
          "https://robohash.org/enimvoluptatemexercitationem.png?size=50x50&set=set1"
    },
    {
      "code": "fd526343-1367-41b8-ab95-54284d593a70",
      "name": "Trencher",
      "description": "10-100 - Visual Display Boards",
      "price": 40.43,
      "path": "Vinyl",
      "imageUrl": "https://robohash.org/animiautest.png?size=50x50&set=set1"
    },
    {
      "code": "b91f5eb0-92e2-49f9-a69c-093b37101914",
      "name": "Backhoe",
      "description": "1-540 - Construction Aids",
      "price": 45.6,
      "path": "Aluminum",
      "imageUrl": "https://robohash.org/omnisquisaut.png?size=50x50&set=set1"
    },
    {
      "code": "21aa50dd-614c-4b95-bda8-d908c9556ac4",
      "name": "Grader",
      "description": "2-781 - Asphalt Pavers",
      "price": 74.17,
      "path": "Wood",
      "imageUrl":
          "https://robohash.org/fugitpraesentiumdolores.png?size=50x50&set=set1"
    },
    {
      "code": "dccdc99e-4b37-4856-bdc0-35cc8c7cf273",
      "name": "Bulldozer",
      "description": "12-800 - Interior Plants and Planters",
      "price": 74.8,
      "path": "Aluminum",
      "imageUrl":
          "https://robohash.org/laborumsuntsimilique.png?size=50x50&set=set1"
    },
    {
      "code": "07058b21-3d02-4235-aca6-71625ef4253c",
      "name": "Skid-Steer",
      "description": "10-550 - Postal Specialties",
      "price": 77.2,
      "path": "Wood",
      "imageUrl": "https://robohash.org/utquiaquisquam.png?size=50x50&set=set1"
    },
    {
      "code": "f5049a79-0998-43d9-960b-f7dc6ea5fa53",
      "name": "Bulldozer",
      "description": "11-300 - Fluid Waste Treatment and Disposal Equipment",
      "price": 39.93,
      "path": "Vinyl",
      "imageUrl": "https://robohash.org/eosautincidunt.png?size=50x50&set=set1"
    },
    {
      "code": "1f05b4c3-a828-4aa7-98f5-5b53edebf1f5",
      "name": "Excavator",
      "description": "16-300 - Transmission and Distribution",
      "price": 30.92,
      "path": "Aluminum",
      "imageUrl": "https://robohash.org/rerumsolutaquae.png?size=50x50&set=set1"
    },
    {
      "code": "5bb59db1-e4b0-40d3-9bfe-bebb6f5b6e00",
      "name": "Crawler",
      "description": "5-500 - Metal Fabrications",
      "price": 53.73,
      "path": "Vinyl",
      "imageUrl":
          "https://robohash.org/eaquesedlaboriosam.png?size=50x50&set=set1"
    },
    {
      "code": "d41ed05b-1681-4ad7-a9a9-5516026e73bc",
      "name": "Excavator",
      "description": "3-600 - Grouts",
      "price": 70.45,
      "path": "Rubber",
      "imageUrl":
          "https://robohash.org/minimavoluptatemminus.png?size=50x50&set=set1"
    },
    {
      "code": "3291984a-9c1c-49e2-a92c-1ce5d83e523b",
      "name": "Bulldozer",
      "description": "4-800 - Masonry Assemblies",
      "price": 17.43,
      "path": "Plastic",
      "imageUrl":
          "https://robohash.org/maximeestexcepturi.png?size=50x50&set=set1"
    },
    {
      "code": "54879e03-82df-48aa-abd7-6935835e0784",
      "name": "Dump Truck",
      "description": "2-825 - Wood Fences and Gates",
      "price": 47.98,
      "path": "Aluminum",
      "imageUrl": "https://robohash.org/namfugiatveniam.png?size=50x50&set=set1"
    },
    {
      "code": "7944538c-b614-42f7-93f7-0863f8a8a2e7",
      "name": "Grader",
      "description": "8-600 - Skylights",
      "price": 99.01,
      "path": "Aluminum",
      "imageUrl":
          "https://robohash.org/temporalaboriosamexplicabo.png?size=50x50&set=set1"
    },
    {
      "code": "fc852e68-0f15-48a3-9f9b-5fa221d7c5ae",
      "name": "Crawler",
      "description": "3-600 - Grouts",
      "price": 59.57,
      "path": "Granite",
      "imageUrl":
          "https://robohash.org/autempraesentiumsaepe.png?size=50x50&set=set1"
    },
    {
      "code": "a7c30b2b-ff19-408a-9270-7cac79356ff5",
      "name": "Grader",
      "description": "1-550 - Vehicular Access and Parking",
      "price": 66.57,
      "path": "Plastic",
      "imageUrl":
          "https://robohash.org/itaquerepellendusea.png?size=50x50&set=set1"
    },
    {
      "code": "c0584945-a0ad-45e9-94a2-271e955d6bc5",
      "name": "Crawler",
      "description": "3-600 - Grouts",
      "price": 38.79,
      "path": "Rubber",
      "imageUrl": "https://robohash.org/illumodiocumque.png?size=50x50&set=set1"
    },
    {
      "code": "5565498e-fca2-4186-b266-704267648efe",
      "name": "Skid-Steer",
      "description": "2-784 - Stone Unit Pavers",
      "price": 2.88,
      "path": "Stone",
      "imageUrl": "https://robohash.org/omniseaquod.png?size=50x50&set=set1"
    },
    {
      "code": "774946a1-40e8-4bc0-b8d3-2f68b7f0cea0",
      "name": "Dragline",
      "description": "2-825 - Wood Fences and Gates",
      "price": 66.27,
      "path": "Rubber",
      "imageUrl":
          "https://robohash.org/minusrepellatdolorem.png?size=50x50&set=set1"
    },
    {
      "code": "013c2509-4968-45c8-ad3a-160fa078e621",
      "name": "Scraper",
      "description": "3-330 - Poured Concrete Basement Walls",
      "price": 49.64,
      "path": "Plexiglass",
      "imageUrl": "https://robohash.org/adipisciexea.png?size=50x50&set=set1"
    },
    {
      "code": "951dee33-a801-4ac7-8b02-2f17879775fa",
      "name": "Bulldozer",
      "description": "13-170 - Tubs and Pools",
      "price": 33.17,
      "path": "Rubber",
      "imageUrl": "https://robohash.org/etetet.png?size=50x50&set=set1"
    },
    {
      "code": "31bd96ea-1f34-4145-be2e-3991a0b72d3e",
      "name": "Bulldozer",
      "description": "1-511 - Temporary Electricity",
      "price": 88.74,
      "path": "Stone",
      "imageUrl":
          "https://robohash.org/voluptatemrerumdoloremque.png?size=50x50&set=set1"
    },
    {
      "code": "dcecb31d-8ff0-45a3-b23f-9bb6268ffa9f",
      "name": "Backhoe",
      "description": "9-300 - Tile",
      "price": 54.51,
      "path": "Vinyl",
      "imageUrl":
          "https://robohash.org/voluptatesquibusdamiusto.png?size=50x50&set=set1"
    },
    {
      "code": "12bc07c5-7848-4a47-a256-899e4c9bf327",
      "name": "Compactor",
      "description": "12-500 - Furniture",
      "price": 4.5,
      "path": "Vinyl",
      "imageUrl":
          "https://robohash.org/maioresnumquamrepellendus.png?size=50x50&set=set1"
    },
    {
      "code": "b864513d-b4a1-43fe-8763-eb9eb8e722e0",
      "name": "Dump Truck",
      "description": "10-880 - Scales",
      "price": 25.1,
      "path": "Stone",
      "imageUrl":
          "https://robohash.org/autcommodivoluptatem.png?size=50x50&set=set1"
    },
    {
      "code": "a828502c-a119-4c21-9fce-fc8e9f013e09",
      "name": "Excavator",
      "description": "14-700 - Turntables",
      "price": 24.89,
      "path": "Plastic",
      "imageUrl":
          "https://robohash.org/quasinciduntvitae.png?size=50x50&set=set1"
    },
    {
      "code": "9e52fe0d-cb5a-44ee-93f7-99f185b1c7d1",
      "name": "Scraper",
      "description": "14-200 - Elevators",
      "price": 19.67,
      "path": "Rubber",
      "imageUrl":
          "https://robohash.org/nonrecusandaesit.png?size=50x50&set=set1"
    },
    {
      "code": "22576271-249e-4919-825c-4069b2252b6c",
      "name": "Excavator",
      "description": "9-500 - Ceilings",
      "price": 16.93,
      "path": "Plastic",
      "imageUrl": "https://robohash.org/situtsapiente.png?size=50x50&set=set1"
    },
    {
      "code": "61b42447-7f20-40a0-bd90-8b7d26089fff",
      "name": "Skid-Steer",
      "description": "1-010 - Project Manager",
      "price": 65.92,
      "path": "Rubber",
      "imageUrl": "https://robohash.org/nihilharumhic.png?size=50x50&set=set1"
    },
    {
      "code": "4cfc208b-4463-478c-8e76-64c041c7139b",
      "name": "Bulldozer",
      "description": "2-930 - Exterior Plants",
      "price": 34.07,
      "path": "Vinyl",
      "imageUrl": "https://robohash.org/magnamipsumqui.png?size=50x50&set=set1"
    },
    {
      "code": "11aee618-fcf8-463d-b9d6-f2fa1e2bf91d",
      "name": "Crawler",
      "description": "2-822 - Ornamental Metal Fences and Gates",
      "price": 79.74,
      "path": "Steel",
      "imageUrl":
          "https://robohash.org/consequaturmagnamreprehenderit.png?size=50x50&set=set1"
    },
    {
      "code": "a6793259-2305-4559-b510-64b71d7b3d35",
      "name": "Trencher",
      "description": "15-700 - Heating, Venting and Air Conditioning",
      "price": 70.67,
      "path": "Vinyl",
      "imageUrl":
          "https://robohash.org/nesciuntvoluptasimpedit.png?size=50x50&set=set1"
    },
    {
      "code": "b79550e9-11d2-44ce-8452-029be0e817ba",
      "name": "Compactor",
      "description": "3-210 - Cast-In-Place Concrete",
      "price": 6.16,
      "path": "Plexiglass",
      "imageUrl":
          "https://robohash.org/corruptisuntmolestias.png?size=50x50&set=set1"
    },
    {
      "code": "9cbd20bc-ab3a-409b-a255-8a0c2d1fa9a9",
      "name": "Dump Truck",
      "description": "2-317 - Select Borrow",
      "price": 15.22,
      "path": "Plastic",
      "imageUrl":
          "https://robohash.org/teneturveniamblanditiis.png?size=50x50&set=set1"
    },
    {
      "code": "ad178df7-8766-4ba3-b585-6891fe57b9c7",
      "name": "Trencher",
      "description": "13-400 - Measurement and Control Instrumentation",
      "price": 6.99,
      "path": "Plastic",
      "imageUrl":
          "https://robohash.org/delenitiprovidentodio.png?size=50x50&set=set1"
    },
    {
      "code": "66b3aa0d-7d65-4101-916c-9ed319f172c1",
      "name": "Grader",
      "description": "2-240 - Dewatering",
      "price": 93.12,
      "path": "Brass",
      "imageUrl": "https://robohash.org/faceremaximeeos.png?size=50x50&set=set1"
    },
    {
      "code": "f05b993b-559c-4593-9a84-b04f416910e5",
      "name": "Dragline",
      "description": "16-800 - Sound and Video",
      "price": 74.42,
      "path": "Plastic",
      "imageUrl":
          "https://robohash.org/atpraesentiumest.png?size=50x50&set=set1"
    },
    {
      "code": "b268f2cb-6981-4411-9476-4ffbe8b0c3cd",
      "name": "Grader",
      "description": "13-010 - Air-Supported Structures",
      "price": 2.74,
      "path": "Steel",
      "imageUrl":
          "https://robohash.org/voluptatemsuntdebitis.png?size=50x50&set=set1"
    },
    {
      "code": "be5de42a-2682-40d7-8515-19bd3bc91775",
      "name": "Compactor",
      "description": "2-621 - Foundatation Drainage Piping",
      "price": 31.63,
      "path": "Brass",
      "imageUrl": "https://robohash.org/illumeteveniet.png?size=50x50&set=set1"
    },
    {
      "code": "b9a4d580-a674-485c-859e-30889d85482c",
      "name": "Backhoe",
      "description": "3 - Concrete",
      "price": 90.54,
      "path": "Steel",
      "imageUrl": "https://robohash.org/velquopossimus.png?size=50x50&set=set1"
    },
    {
      "code": "7b0b4337-23a3-418f-8c91-438f01c6e6e4",
      "name": "Compactor",
      "description": "13-550 - Transportation Control Instrumentation",
      "price": 23.37,
      "path": "Vinyl",
      "imageUrl": "https://robohash.org/quisutnumquam.png?size=50x50&set=set1"
    },
    {
      "code": "2336bcc5-060e-49c6-bd0e-202f9f99b39d",
      "name": "Grader",
      "description": "3-330 - Poured Concrete Basement Walls",
      "price": 40.17,
      "path": "Wood",
      "imageUrl":
          "https://robohash.org/praesentiumestvelit.png?size=50x50&set=set1"
    },
    {
      "code": "3a4fc81b-48aa-429a-a631-239a94da9302",
      "name": "Dump Truck",
      "description": "9-680 - Carpet",
      "price": 99.69,
      "path": "Vinyl",
      "imageUrl": "https://robohash.org/velitinquis.png?size=50x50&set=set1"
    },
    {
      "code": "01a142ce-c569-47e2-b944-f1fe6cf6f604",
      "name": "Excavator",
      "description": "8-200 - Wood and Plastic Doors",
      "price": 45.42,
      "path": "Plastic",
      "imageUrl":
          "https://robohash.org/facilisquiaquisquam.png?size=50x50&set=set1"
    },
    {
      "code": "7d42f1a6-0c55-4985-87bc-36246fbba12a",
      "name": "Grader",
      "description": "10-270 - Access Flooring",
      "price": 44.45,
      "path": "Brass",
      "imageUrl":
          "https://robohash.org/exercitationemexnihil.png?size=50x50&set=set1"
    },
    {
      "code": "4dbb8011-2e93-44ed-a84d-ae4c06c83eec",
      "name": "Backhoe",
      "description": "2-316 - Backfilling",
      "price": 89.25,
      "path": "Glass",
      "imageUrl":
          "https://robohash.org/eligendivoluptatemofficia.png?size=50x50&set=set1"
    },
    {
      "code": "2dc0f405-970b-4229-bc53-9d63bfd71eb2",
      "name": "Dragline",
      "description": "13-150 - Swimming Pools",
      "price": 86.37,
      "path": "Granite",
      "imageUrl":
          "https://robohash.org/inventorecupiditatealias.png?size=50x50&set=set1"
    },
    {
      "code": "72f2f713-4e57-478c-9d25-25591598dded",
      "name": "Grader",
      "description": "7-700 - Roof Specialties and Accessories",
      "price": 90.47,
      "path": "Aluminum",
      "imageUrl":
          "https://robohash.org/solutafugiatpariatur.png?size=50x50&set=set1"
    },
    {
      "code": "3e26f54d-3678-478f-87ff-96a1f8b3b667",
      "name": "Backhoe",
      "description": "2-784 - Stone Unit Pavers",
      "price": 22.3,
      "path": "Brass",
      "imageUrl":
          "https://robohash.org/fugiatdistinctioet.png?size=50x50&set=set1"
    },
    {
      "code": "e90e185a-6883-4714-a19e-9629c6108550",
      "name": "Compactor",
      "description": "1-514 - Temporary Heating, Cooling and Ventilation",
      "price": 11.32,
      "path": "Plexiglass",
      "imageUrl": "https://robohash.org/laborumautea.png?size=50x50&set=set1"
    },
    {
      "code": "588bbbfb-6801-427b-9a0f-27edbd79a846",
      "name": "Compactor",
      "description": "11-130 - Audio-Visual Equipment",
      "price": 99.14,
      "path": "Rubber",
      "imageUrl":
          "https://robohash.org/accusamusutvoluptatem.png?size=50x50&set=set1"
    },
    {
      "code": "aa7c33de-bdc6-4a78-aa31-1802c4c077ad",
      "name": "Skid-Steer",
      "description": "2-850 - Bridges/Footbridges",
      "price": 13.85,
      "path": "Steel",
      "imageUrl":
          "https://robohash.org/quiaquidempraesentium.png?size=50x50&set=set1"
    },
    {
      "code": "e4575430-ce7e-44c7-99e1-9c297ce1afe3",
      "name": "Trencher",
      "description": "10-500 - Lockers",
      "price": 54.99,
      "path": "Steel",
      "imageUrl":
          "https://robohash.org/quiinciduntrerum.png?size=50x50&set=set1"
    },
    {
      "code": "6a811583-1707-4132-946c-d2d68439fc85",
      "name": "Excavator",
      "description": "2-825 - Wood Fences and Gates",
      "price": 58.33,
      "path": "Wood",
      "imageUrl": "https://robohash.org/aperiamautid.png?size=50x50&set=set1"
    },
    {
      "code": "3957a1e7-2178-463f-9ce8-c0d82cc138ca",
      "name": "Dragline",
      "description": "2-781 - Asphalt Pavers",
      "price": 17.33,
      "path": "Aluminum",
      "imageUrl":
          "https://robohash.org/repellatlaboreet.png?size=50x50&set=set1"
    },
    {
      "code": "6bc591a5-2968-4bcd-8c19-81a50565bbf4",
      "name": "Scraper",
      "description": "2-750 - Concrete Pads and Walks",
      "price": 61.52,
      "path": "Wood",
      "imageUrl": "https://robohash.org/eaaccusamusodit.png?size=50x50&set=set1"
    },
    {
      "code": "4dcec096-0d58-4601-8ecc-dc8a41b97b64",
      "name": "Compactor",
      "description": "1-514 - Temporary Heating, Cooling and Ventilation",
      "price": 87.83,
      "path": "Vinyl",
      "imageUrl":
          "https://robohash.org/distinctioquicupiditate.png?size=50x50&set=set1"
    },
    {
      "code": "45be2782-5455-4538-8c93-72d4e9ab75b1",
      "name": "Crawler",
      "description": "16 - Electrical",
      "price": 91.41,
      "path": "Vinyl",
      "imageUrl": "https://robohash.org/doloresnisiut.png?size=50x50&set=set1"
    },
    {
      "code": "c4de90f8-d7fb-4184-b02e-d8dda409bca0",
      "name": "Dump Truck",
      "description": "5-300 - Metal Deck",
      "price": 72.64,
      "path": "Plexiglass",
      "imageUrl": "https://robohash.org/officiisautsunt.png?size=50x50&set=set1"
    },
    {
      "code": "a0d8745b-8925-4b96-8e30-985091c79ffe",
      "name": "Dump Truck",
      "description": "11-080 - Registration Equipment",
      "price": 51.79,
      "path": "Plastic",
      "imageUrl":
          "https://robohash.org/sitnobismolestiae.png?size=50x50&set=set1"
    },
    {
      "code": "c453879b-16cb-4b63-b7f7-6e34f5047684",
      "name": "Dump Truck",
      "description": "4-400 - Stone",
      "price": 7.72,
      "path": "Rubber",
      "imageUrl": "https://robohash.org/rerumminusaut.png?size=50x50&set=set1"
    },
    {
      "code": "d40bba31-dc6f-4e20-a59a-8a9ece22e4aa",
      "name": "Compactor",
      "description": "6-200 - Finish Carpentry",
      "price": 53.6,
      "path": "Wood",
      "imageUrl":
          "https://robohash.org/debitisautaliquam.png?size=50x50&set=set1"
    },
    {
      "code": "b3139dca-5c6a-4064-9a97-de89bbb268f2",
      "name": "Backhoe",
      "description": "1-011 - Project Engineer",
      "price": 60.94,
      "path": "Brass",
      "imageUrl":
          "https://robohash.org/quidemmagnamipsam.png?size=50x50&set=set1"
    },
    {
      "code": "a3b3e97d-d835-4ad8-a35d-e452474f6699",
      "name": "Grader",
      "description": "10-250 - Service Walls",
      "price": 33.42,
      "path": "Steel",
      "imageUrl":
          "https://robohash.org/asperioresfugiatreiciendis.png?size=50x50&set=set1"
    },
    {
      "code": "9afad960-c207-43b9-910f-949226a861ab",
      "name": "Crawler",
      "description": "12 - Furnishings",
      "price": 94.6,
      "path": "Aluminum",
      "imageUrl": "https://robohash.org/harumetenim.png?size=50x50&set=set1"
    },
    {
      "code": "bd8d0aec-6161-4818-9eff-14303c5876d7",
      "name": "Skid-Steer",
      "description": "12 - Furnishings",
      "price": 37.69,
      "path": "Wood",
      "imageUrl":
          "https://robohash.org/illummaximeneque.png?size=50x50&set=set1"
    },
    {
      "code": "c272e7f7-999b-475c-827e-ddb13d240873",
      "name": "Grader",
      "description": "1-013 - Project Coordinator",
      "price": 13.86,
      "path": "Glass",
      "imageUrl":
          "https://robohash.org/etconsequaturalias.png?size=50x50&set=set1"
    },
    {
      "code": "67d36c02-4889-4181-b274-1875e3aed449",
      "name": "Bulldozer",
      "description": "16-050 - Basic Electrical Materials and Methods",
      "price": 18.66,
      "path": "Aluminum",
      "imageUrl": "https://robohash.org/eumvoluptasaut.png?size=50x50&set=set1"
    }
  ],
  "workers": [
    {
      "code": "27645c4b-21c0-4161-80bb-1317aa29b3f1",
      "name": "Matty",
      "description": "Epoxy Flooring",
      "price": 89.15,
      "phone": "109-592-4456",
      "type": "Engineer",
      "address": "Sugar",
      "path": "Pipelayer",
      "imageUrl":
          "https://robohash.org/impeditestpariatur.png?size=50x50&set=set1"
    },
    {
      "code": "8bd2a1a9-4db0-45e7-9b70-e6994c3b1701",
      "name": "Cathe",
      "description": "Elevator",
      "price": 83.14,
      "phone": "767-658-2158",
      "type": "Architect",
      "address": "Donald",
      "path": "Waterproofer",
      "imageUrl":
          "https://robohash.org/repellatquinesciunt.png?size=50x50&set=set1"
    },
    {
      "code": "38493147-cd52-4e98-8755-e8309cdf1faf",
      "name": "Bellina",
      "description": "Construction Clean and Final Clean",
      "price": 30.46,
      "phone": "491-173-2646",
      "type": "Surveyor",
      "address": "Mallory",
      "path": "Safety Officer",
      "imageUrl": "https://robohash.org/oditofficiaamet.png?size=50x50&set=set1"
    },
    {
      "code": "33064d4b-417b-4e48-935f-b9ae9310dbde",
      "name": "Mattie",
      "description": "Roofing (Metal)",
      "price": 45.72,
      "phone": "493-286-5492",
      "type": "Subcontractor",
      "address": "Merrick",
      "path": "Brickmason",
      "imageUrl": "https://robohash.org/beataeetex.png?size=50x50&set=set1"
    },
    {
      "code": "a7b6d08d-cefb-4815-a666-02d581c104e0",
      "name": "Ally",
      "description": "Fire Protection",
      "price": 85.45,
      "phone": "444-678-0880",
      "type": "Construction Manager",
      "address": "Stoughton",
      "path": "Terrazzo",
      "imageUrl":
          "https://robohash.org/beataeatqueplaceat.png?size=50x50&set=set1"
    },
    {
      "code": "4a489731-57af-4153-a60b-174b4486f5d5",
      "name": "Diannne",
      "description": "Sitework & Site Utilities",
      "price": 56.22,
      "phone": "596-970-0441",
      "type": "Subcontractor",
      "address": "Muir",
      "path": "Stucco Mason",
      "imageUrl": "https://robohash.org/dolorumnequeet.png?size=50x50&set=set1"
    },
    {
      "code": "61be5be0-5d30-4002-9cd0-cd91c4a31368",
      "name": "Christiano",
      "description": "Retaining Wall and Brick Pavers",
      "price": 2.43,
      "phone": "974-390-1760",
      "type": "Surveyor",
      "address": "Crest Line",
      "path": "Brickmason",
      "imageUrl":
          "https://robohash.org/sitfacerequisquam.png?size=50x50&set=set1"
    },
    {
      "code": "7e543cff-b6bf-4327-926b-1d94c9ea1207",
      "name": "Tiffi",
      "description": "Termite Control",
      "price": 3.87,
      "phone": "388-511-7864",
      "type": "Architect",
      "address": "School",
      "path": "Concrete Finisher",
      "imageUrl":
          "https://robohash.org/pariaturquinobis.png?size=50x50&set=set1"
    },
    {
      "code": "f175d140-2038-49e1-906a-33d153cb1f24",
      "name": "Melitta",
      "description": "Temp Fencing, Decorative Fencing and Gates",
      "price": 11.46,
      "phone": "215-515-5854",
      "type": "Subcontractor",
      "address": "Holmberg",
      "path": "Plumber",
      "imageUrl": "https://robohash.org/exautdeleniti.png?size=50x50&set=set1"
    },
    {
      "code": "223e19c2-6f94-4d11-9f65-f26c876aab07",
      "name": "Faun",
      "description": "Doors, Frames & Hardware",
      "price": 53.97,
      "phone": "795-266-9473",
      "type": "Construction Foreman",
      "address": "Sullivan",
      "path": "Carpenter",
      "imageUrl":
          "https://robohash.org/fugitrepellatquibusdam.png?size=50x50&set=set1"
    },
    {
      "code": "5004e3af-69d1-4e5d-8c50-3a2ca1a57705",
      "name": "Anatol",
      "description": "Ornamental Railings",
      "price": 94.59,
      "phone": "960-907-2611",
      "type": "Electrician",
      "address": "Hoepker",
      "path": "Painter",
      "imageUrl":
          "https://robohash.org/recusandaemaioresqui.png?size=50x50&set=set1"
    },
    {
      "code": "1febb39b-9bf2-48b8-99a4-bd379015ae08",
      "name": "Dulci",
      "description": "RF Shielding",
      "price": 88.97,
      "phone": "630-410-2095",
      "type": "Construction Manager",
      "address": "Colorado",
      "path": "Electrician",
      "imageUrl":
          "https://robohash.org/architectoomniset.png?size=50x50&set=set1"
    },
    {
      "code": "608d0733-fbb7-42d4-839c-d9cd981bee51",
      "name": "Lenka",
      "description": "Construction Clean and Final Clean",
      "price": 72.75,
      "phone": "186-595-9993",
      "type": "Project Manager",
      "address": "Logan",
      "path": "Pipefitter",
      "imageUrl":
          "https://robohash.org/repellendusveniamnulla.png?size=50x50&set=set1"
    },
    {
      "code": "85acd0e9-1645-4d86-b5e6-637aa1e015f8",
      "name": "Corena",
      "description": "Glass & Glazing",
      "price": 41.77,
      "phone": "842-196-3527",
      "type": "Construction Worker",
      "address": "Shopko",
      "path": "HVAC",
      "imageUrl":
          "https://robohash.org/voluptatesabmollitia.png?size=50x50&set=set1"
    },
    {
      "code": "09e3f3c5-9d89-45b6-8ea4-d7d2688b4e67",
      "name": "Alejandrina",
      "description": "Casework",
      "price": 43.68,
      "phone": "639-428-2899",
      "type": "Architect",
      "address": "Barnett",
      "path": "Stucco Mason",
      "imageUrl":
          "https://robohash.org/sedquasmolestias.png?size=50x50&set=set1"
    },
    {
      "code": "988fb06c-b347-404e-ac24-643ad4056f9e",
      "name": "Marlo",
      "description": "Rebar & Wire Mesh Install",
      "price": 94.1,
      "phone": "527-886-4763",
      "type": "Construction Worker",
      "address": "Gulseth",
      "path": "Equipment Operator",
      "imageUrl":
          "https://robohash.org/quiadelectusofficia.png?size=50x50&set=set1"
    },
    {
      "code": "59325dbf-6e5b-400f-a898-aa44727312e8",
      "name": "Constantina",
      "description": "EIFS",
      "price": 54.85,
      "phone": "224-641-0052",
      "type": "Construction Manager",
      "address": "Riverside",
      "path": "Laborer",
      "imageUrl":
          "https://robohash.org/autullamvoluptatem.png?size=50x50&set=set1"
    },
    {
      "code": "fb662d1c-24a8-4ae0-bc56-35741031d7a4",
      "name": "Demott",
      "description": "Framing (Wood)",
      "price": 63.82,
      "phone": "626-276-2484",
      "type": "Construction Expeditor",
      "address": "Quincy",
      "path": "Electrician",
      "imageUrl":
          "https://robohash.org/nesciuntdolorumnulla.png?size=50x50&set=set1"
    },
    {
      "code": "853d6091-2ffe-48a4-a425-9836d0ed608f",
      "name": "Natale",
      "description": "Casework",
      "price": 27.89,
      "phone": "750-189-4619",
      "type": "Engineer",
      "address": "Manufacturers",
      "path": "Pipefitter",
      "imageUrl": "https://robohash.org/nobisenimest.png?size=50x50&set=set1"
    },
    {
      "code": "89df3c50-5706-414e-8270-bc8c4b2b9f68",
      "name": "Dawna",
      "description": "Landscaping & Irrigation",
      "price": 55.31,
      "phone": "563-506-5522",
      "type": "Project Manager",
      "address": "Warrior",
      "path": "Safety Officer",
      "imageUrl":
          "https://robohash.org/inventoredoloremrerum.png?size=50x50&set=set1"
    },
    {
      "code": "07cc5e78-09dd-4e9f-bfb1-43dbea92d57e",
      "name": "Genevra",
      "description": "HVAC",
      "price": 5.56,
      "phone": "134-294-5887",
      "type": "Construction Foreman",
      "address": "Reinke",
      "path": "HVAC",
      "imageUrl":
          "https://robohash.org/atquerepellendusea.png?size=50x50&set=set1"
    },
    {
      "code": "ff916196-09f5-45a5-a260-153d6ace3aa8",
      "name": "Taber",
      "description": "Roofing (Asphalt)",
      "price": 94.25,
      "phone": "713-717-7528",
      "type": "Project Manager",
      "address": "Drewry",
      "path": "Boilermaker",
      "imageUrl": "https://robohash.org/enimnemoesse.png?size=50x50&set=set1"
    },
    {
      "code": "0bd8fbd1-60cc-4312-9381-09b4cd93c29f",
      "name": "Prudi",
      "description": "HVAC",
      "price": 93.81,
      "phone": "747-760-4004",
      "type": "Construction Foreman",
      "address": "Dayton",
      "path": "Cement Mason",
      "imageUrl":
          "https://robohash.org/natuspraesentiumvitae.png?size=50x50&set=set1"
    },
    {
      "code": "3d003f66-43db-4c31-aef7-de5345653a09",
      "name": "Cyril",
      "description": "Structural and Misc Steel (Fabrication)",
      "price": 24.06,
      "phone": "115-144-0427",
      "type": "Project Manager",
      "address": "Dryden",
      "path": "Welder",
      "imageUrl": "https://robohash.org/possimusetet.png?size=50x50&set=set1"
    },
    {
      "code": "73b8b1c7-2664-419f-82a0-33f3ee2bf055",
      "name": "Olga",
      "description": "Ornamental Railings",
      "price": 91.65,
      "phone": "569-474-1627",
      "type": "Supervisor",
      "address": "Johnson",
      "path": "Waterproofer",
      "imageUrl":
          "https://robohash.org/consequaturquilaboriosam.png?size=50x50&set=set1"
    },
    {
      "code": "3a349cb9-e1a7-45c2-bd2c-ab72cdc80e65",
      "name": "Skippy",
      "description": "Sitework & Site Utilities",
      "price": 26.01,
      "phone": "763-635-9289",
      "type": "Construction Worker",
      "address": "Utah",
      "path": "Tile Setter",
      "imageUrl": "https://robohash.org/etmollitiarerum.png?size=50x50&set=set1"
    },
    {
      "code": "8e708784-16c9-4dd3-a90f-b8afc8e629c7",
      "name": "Darb",
      "description": "Structural and Misc Steel (Fabrication)",
      "price": 67.2,
      "phone": "253-354-9405",
      "type": "Surveyor",
      "address": "Gerald",
      "path": "Cement Mason",
      "imageUrl":
          "https://robohash.org/omnisenimtempora.png?size=50x50&set=set1"
    },
    {
      "code": "bfab5eda-a4f7-4787-a1b1-0b8df6f8421b",
      "name": "Hollis",
      "description": "Elevator",
      "price": 56.6,
      "phone": "238-998-5573",
      "type": "Electrician",
      "address": "Jackson",
      "path": "Plumber",
      "imageUrl":
          "https://robohash.org/excepturiadipiscisoluta.png?size=50x50&set=set1"
    },
    {
      "code": "87eeab03-4532-4f4d-9e4e-5a664faa4d9f",
      "name": "Donall",
      "description": "Termite Control",
      "price": 37.78,
      "phone": "165-640-6355",
      "type": "Electrician",
      "address": "Stuart",
      "path": "Glazier",
      "imageUrl":
          "https://robohash.org/sedistevoluptatibus.png?size=50x50&set=set1"
    },
    {
      "code": "6a697be1-ede2-4412-9bfb-b22e969e5330",
      "name": "Bibi",
      "description": "Epoxy Flooring",
      "price": 99.62,
      "phone": "530-618-3970",
      "type": "Construction Manager",
      "address": "Manitowish",
      "path": "Plasterers",
      "imageUrl":
          "https://robohash.org/consequaturauttempora.png?size=50x50&set=set1"
    },
    {
      "code": "cf6802c5-05d9-431b-96cd-a8bdb1dc1fb7",
      "name": "Linnell",
      "description": "Masonry",
      "price": 54.47,
      "phone": "177-474-8530",
      "type": "Estimator",
      "address": "Hagan",
      "path": "Glazier",
      "imageUrl": "https://robohash.org/doloranimiquis.png?size=50x50&set=set1"
    },
    {
      "code": "f5f01153-2977-451a-a515-2eff026edf2b",
      "name": "Port",
      "description": "Structural & Misc Steel Erection",
      "price": 24.12,
      "phone": "112-313-2778",
      "type": "Architect",
      "address": "International",
      "path": "Millwright",
      "imageUrl":
          "https://robohash.org/voluptatemaioresaut.png?size=50x50&set=set1"
    },
    {
      "code": "dda64a13-0a02-4004-8102-2519b9a654f0",
      "name": "Engracia",
      "description": "Rebar & Wire Mesh Install",
      "price": 73.78,
      "phone": "428-413-1802",
      "type": "Estimator",
      "address": "Manufacturers",
      "path": "Electrician",
      "imageUrl":
          "https://robohash.org/voluptatemnondolor.png?size=50x50&set=set1"
    },
    {
      "code": "399be580-6e53-43e9-a59c-408724e2aaed",
      "name": "Nissa",
      "description": "Waterproofing & Caulking",
      "price": 27.22,
      "phone": "617-105-7139",
      "type": "Project Manager",
      "address": "Debra",
      "path": "Carpenter",
      "imageUrl":
          "https://robohash.org/rerumipsumdignissimos.png?size=50x50&set=set1"
    },
    {
      "code": "0db5d3b4-9e14-4778-8227-045489e8f281",
      "name": "Clyve",
      "description": "Curb & Gutter",
      "price": 19.63,
      "phone": "951-538-8954",
      "type": "Engineer",
      "address": "Moulton",
      "path": "Painter",
      "imageUrl":
          "https://robohash.org/quoconsequaturomnis.png?size=50x50&set=set1"
    },
    {
      "code": "9522bb3c-9482-4cc9-b218-563e5e8523d3",
      "name": "Iolanthe",
      "description": "Rebar & Wire Mesh Install",
      "price": 34.49,
      "phone": "508-414-5006",
      "type": "Architect",
      "address": "Reinke",
      "path": "HVAC",
      "imageUrl":
          "https://robohash.org/impeditenimitaque.png?size=50x50&set=set1"
    },
    {
      "code": "04305b48-79d6-4b25-8e37-f2362fbe8c07",
      "name": "Pepito",
      "description": "Marlite Panels (FED)",
      "price": 90.64,
      "phone": "890-710-6614",
      "type": "Construction Manager",
      "address": "Dapin",
      "path": "Sheet Metal Worker",
      "imageUrl": "https://robohash.org/maioresquisequi.png?size=50x50&set=set1"
    },
    {
      "code": "13d46f1e-f854-489e-abee-9f57c891ce8d",
      "name": "Kirby",
      "description": "Elevator",
      "price": 69.62,
      "phone": "867-374-3872",
      "type": "Project Manager",
      "address": "Rusk",
      "path": "Pipefitter",
      "imageUrl": "https://robohash.org/voluptasnonet.png?size=50x50&set=set1"
    },
    {
      "code": "92a05366-3ba3-4e92-a8b8-d2eeb8b3b44e",
      "name": "Lotte",
      "description": "Painting & Vinyl Wall Covering",
      "price": 21.19,
      "phone": "307-273-8178",
      "type": "Construction Foreman",
      "address": "Parkside",
      "path": "Pipelayer",
      "imageUrl":
          "https://robohash.org/quodoloresvoluptas.png?size=50x50&set=set1"
    },
    {
      "code": "6b1edaf2-fcf8-4af8-a6e2-58e7e245d37e",
      "name": "Cindelyn",
      "description": "Temp Fencing, Decorative Fencing and Gates",
      "price": 47.08,
      "phone": "318-501-5773",
      "type": "Construction Foreman",
      "address": "Meadow Vale",
      "path": "Safety Officer",
      "imageUrl":
          "https://robohash.org/teneturculpadolorum.png?size=50x50&set=set1"
    },
    {
      "code": "8425a87a-e7de-4424-94a3-0ae485173f08",
      "name": "Evyn",
      "description": "Painting & Vinyl Wall Covering",
      "price": 42.84,
      "phone": "787-252-5815",
      "type": "Architect",
      "address": "Portage",
      "path": "Electrician",
      "imageUrl": "https://robohash.org/sedpariaturunde.png?size=50x50&set=set1"
    },
    {
      "code": "0f728741-d1af-4b65-87c2-7394bd8c089e",
      "name": "Lothaire",
      "description": "Structural & Misc Steel Erection",
      "price": 48.91,
      "phone": "126-267-1878",
      "type": "Supervisor",
      "address": "Declaration",
      "path": "Linemen",
      "imageUrl": "https://robohash.org/evenieterrorqui.png?size=50x50&set=set1"
    },
    {
      "code": "5f1d885d-7a98-4d60-bfdf-5fed177c2b5a",
      "name": "Rheta",
      "description": "Retaining Wall and Brick Pavers",
      "price": 88.51,
      "phone": "192-657-5724",
      "type": "Construction Manager",
      "address": "Vidon",
      "path": "Tile Setter",
      "imageUrl": "https://robohash.org/eaquesednon.png?size=50x50&set=set1"
    },
    {
      "code": "1d6634b9-4562-46fa-a782-0bcf13639159",
      "name": "Krissie",
      "description": "Landscaping & Irrigation",
      "price": 99.2,
      "phone": "354-619-2803",
      "type": "Construction Manager",
      "address": "Huxley",
      "path": "Terrazzo",
      "imageUrl":
          "https://robohash.org/quoitaquecorporis.png?size=50x50&set=set1"
    },
    {
      "code": "8e4521c9-22c8-4348-9b90-e1d8d923727e",
      "name": "Ettore",
      "description": "Soft Flooring and Base",
      "price": 72.46,
      "phone": "126-861-4624",
      "type": "Electrician",
      "address": "Arkansas",
      "path": "Glazier",
      "imageUrl":
          "https://robohash.org/verofacereconsequatur.png?size=50x50&set=set1"
    },
    {
      "code": "ea4191ec-1391-46f5-8b93-49aa665fd887",
      "name": "Artair",
      "description": "Prefabricated Aluminum Metal Canopies",
      "price": 12.11,
      "phone": "526-922-4712",
      "type": "Construction Expeditor",
      "address": "Moose",
      "path": "Concrete Finisher",
      "imageUrl": "https://robohash.org/debitisnullaest.png?size=50x50&set=set1"
    },
    {
      "code": "b3b39cde-fb65-4231-b13d-c4354e89920e",
      "name": "Ringo",
      "description": "Elevator",
      "price": 75.14,
      "phone": "117-483-8129",
      "type": "Construction Expeditor",
      "address": "Lawn",
      "path": "Laborer",
      "imageUrl":
          "https://robohash.org/nullamollitiafuga.png?size=50x50&set=set1"
    },
    {
      "code": "1a9e1de5-d029-446a-b076-07675c8d760e",
      "name": "Marketa",
      "description": "Construction Clean and Final Clean",
      "price": 57.63,
      "phone": "323-580-0115",
      "type": "Electrician",
      "address": "Veith",
      "path": "Pipelayer",
      "imageUrl":
          "https://robohash.org/idrationeofficiis.png?size=50x50&set=set1"
    },
    {
      "code": "bd0d6b83-2e90-4660-a62e-b6362d602ca5",
      "name": "Sebastiano",
      "description": "Casework",
      "price": 3.98,
      "phone": "809-828-9141",
      "type": "Construction Expeditor",
      "address": "Manley",
      "path": "Sheet Metal Worker",
      "imageUrl": "https://robohash.org/debitisquasunde.png?size=50x50&set=set1"
    },
    {
      "code": "829dd231-a84b-4b63-afca-51a42ec25ae6",
      "name": "Brinn",
      "description": "Ornamental Railings",
      "price": 57.36,
      "phone": "994-804-9530",
      "type": "Subcontractor",
      "address": "Glendale",
      "path": "HVAC",
      "imageUrl":
          "https://robohash.org/voluptasexpeditaerror.png?size=50x50&set=set1"
    },
    {
      "code": "5e8753f3-646c-4008-8ae1-2165859e0820",
      "name": "Sanderson",
      "description": "Structural & Misc Steel Erection",
      "price": 78.15,
      "phone": "336-597-2453",
      "type": "Construction Manager",
      "address": "Fair Oaks",
      "path": "Pipefitter",
      "imageUrl": "https://robohash.org/nonutsed.png?size=50x50&set=set1"
    },
    {
      "code": "58af679a-8639-4bd2-b82b-90dd0ead369c",
      "name": "Jenny",
      "description": "Retaining Wall and Brick Pavers",
      "price": 4.1,
      "phone": "800-112-1000",
      "type": "Supervisor",
      "address": "Mifflin",
      "path": "Cement Mason",
      "imageUrl":
          "https://robohash.org/quivoluptatumsit.png?size=50x50&set=set1"
    },
    {
      "code": "35cb0eaa-4b42-4afa-bd54-80e3de4e84d4",
      "name": "Jeniece",
      "description": "Construction Clean and Final Clean",
      "price": 64.57,
      "phone": "278-208-7597",
      "type": "Construction Foreman",
      "address": "Rigney",
      "path": "Pipefitter",
      "imageUrl": "https://robohash.org/natusautet.png?size=50x50&set=set1"
    },
    {
      "code": "4685220a-2e18-4ab9-9543-7f48a60b6f79",
      "name": "Calv",
      "description": "Plumbing & Medical Gas",
      "price": 71.81,
      "phone": "571-382-9795",
      "type": "Electrician",
      "address": "Magdeline",
      "path": "Carpenter",
      "imageUrl": "https://robohash.org/enimautdolorum.png?size=50x50&set=set1"
    },
    {
      "code": "8ab38bfc-d56e-4125-8fa4-ee642590042e",
      "name": "Maryrose",
      "description": "Drywall & Acoustical (FED)",
      "price": 91.13,
      "phone": "756-178-1394",
      "type": "Architect",
      "address": "Mendota",
      "path": "Linemen",
      "imageUrl": "https://robohash.org/quianonvelit.png?size=50x50&set=set1"
    },
    {
      "code": "02b387da-eb77-4438-90ad-6f5deeada2de",
      "name": "Nollie",
      "description": "Fire Protection",
      "price": 92.45,
      "phone": "434-360-0528",
      "type": "Supervisor",
      "address": "Veith",
      "path": "Waterproofer",
      "imageUrl": "https://robohash.org/earummaximeut.png?size=50x50&set=set1"
    },
    {
      "code": "ae79457e-2036-4eea-b6fb-8682af32b158",
      "name": "Sibley",
      "description": "Elevator",
      "price": 23.92,
      "phone": "733-538-8825",
      "type": "Architect",
      "address": "Ramsey",
      "path": "Welder",
      "imageUrl":
          "https://robohash.org/estutrepudiandae.png?size=50x50&set=set1"
    },
    {
      "code": "67ae103e-9f89-4ef6-a52e-7902579e06fe",
      "name": "Catina",
      "description": "Plumbing & Medical Gas",
      "price": 50.11,
      "phone": "258-924-9487",
      "type": "Construction Manager",
      "address": "Hovde",
      "path": "Terrazzo",
      "imageUrl":
          "https://robohash.org/eiusauttemporibus.png?size=50x50&set=set1"
    },
    {
      "code": "bf1e1756-b2e5-4d9a-82e1-1afb3552854f",
      "name": "Katusha",
      "description": "Hard Tile & Stone",
      "price": 95.74,
      "phone": "408-862-3921",
      "type": "Electrician",
      "address": "American",
      "path": "Ironworker",
      "imageUrl":
          "https://robohash.org/assumendaprovidentnam.png?size=50x50&set=set1"
    },
    {
      "code": "17ae4321-1e29-4d78-82be-e43a6f74342a",
      "name": "Karleen",
      "description": "Doors, Frames & Hardware",
      "price": 88.46,
      "phone": "888-826-6595",
      "type": "Surveyor",
      "address": "Dottie",
      "path": "Glazier",
      "imageUrl":
          "https://robohash.org/abaspernatursapiente.png?size=50x50&set=set1"
    },
    {
      "code": "1b3c7429-c614-406a-a179-71748981f443",
      "name": "Chrissy",
      "description": "Curb & Gutter",
      "price": 48.24,
      "phone": "317-235-2602",
      "type": "Supervisor",
      "address": "Sloan",
      "path": "Glazier",
      "imageUrl":
          "https://robohash.org/veniamlaudantiumrerum.png?size=50x50&set=set1"
    },
    {
      "code": "cb679d46-c228-4229-bd79-f57681dc0c26",
      "name": "Dela",
      "description": "Wall Protection",
      "price": 30.12,
      "phone": "776-137-0247",
      "type": "Construction Foreman",
      "address": "Brown",
      "path": "Laborer",
      "imageUrl":
          "https://robohash.org/auttemporibussequi.png?size=50x50&set=set1"
    },
    {
      "code": "0628b29a-c563-4928-a095-1f582fdcc413",
      "name": "Grannie",
      "description": "Wall Protection",
      "price": 46.67,
      "phone": "835-129-5898",
      "type": "Construction Foreman",
      "address": "Dorton",
      "path": "HVAC",
      "imageUrl":
          "https://robohash.org/cumquerecusandaeimpedit.png?size=50x50&set=set1"
    },
    {
      "code": "31b3a124-181e-4de4-9cbe-8ab7f8048088",
      "name": "Jacki",
      "description": "Drywall & Acoustical (MOB)",
      "price": 91.02,
      "phone": "270-948-4644",
      "type": "Architect",
      "address": "Nelson",
      "path": "Welder",
      "imageUrl": "https://robohash.org/abdoloresaut.png?size=50x50&set=set1"
    },
    {
      "code": "565796bf-8afc-4a31-97c6-96ed3b63d12b",
      "name": "Brenna",
      "description": "Termite Control",
      "price": 57.88,
      "phone": "328-380-5633",
      "type": "Construction Manager",
      "address": "Buena Vista",
      "path": "Landscaper",
      "imageUrl":
          "https://robohash.org/dictadoloreconsequatur.png?size=50x50&set=set1"
    },
    {
      "code": "4eccd718-d04c-4c6f-a733-837bb3cc9965",
      "name": "Rubin",
      "description": "Masonry & Precast",
      "price": 71.55,
      "phone": "316-490-4875",
      "type": "Construction Worker",
      "address": "Old Shore",
      "path": "Safety Officer",
      "imageUrl":
          "https://robohash.org/molestiaemolestiaelaborum.png?size=50x50&set=set1"
    },
    {
      "code": "35ea8557-8cc8-4c02-8a29-2490c5aefa78",
      "name": "Brendon",
      "description": "Masonry",
      "price": 32.11,
      "phone": "973-269-2073",
      "type": "Project Manager",
      "address": "Calypso",
      "path": "Plumber",
      "imageUrl": "https://robohash.org/exquodautem.png?size=50x50&set=set1"
    },
    {
      "code": "48d81765-5143-49c4-a24d-78a678d8e1a8",
      "name": "Zorana",
      "description": "Overhead Doors",
      "price": 45.93,
      "phone": "502-950-8758",
      "type": "Architect",
      "address": "Hermina",
      "path": "Ironworker",
      "imageUrl": "https://robohash.org/quoillonam.png?size=50x50&set=set1"
    },
    {
      "code": "eca30904-f7bb-4d51-89b3-6a7cb22ab5e0",
      "name": "Dannie",
      "description": "Fire Protection",
      "price": 66.37,
      "phone": "969-150-1532",
      "type": "Surveyor",
      "address": "Melody",
      "path": "Sheet Metal Worker",
      "imageUrl":
          "https://robohash.org/voluptatesfugiatducimus.png?size=50x50&set=set1"
    },
    {
      "code": "0783b259-83d5-4547-981e-ade242445129",
      "name": "Simeon",
      "description": "EIFS",
      "price": 92.78,
      "phone": "953-271-0057",
      "type": "Subcontractor",
      "address": "Havey",
      "path": "Refridgeration",
      "imageUrl":
          "https://robohash.org/voluptatemeavoluptates.png?size=50x50&set=set1"
    },
    {
      "code": "c5af9904-a888-473b-8118-057c21b813f7",
      "name": "Shelby",
      "description": "Waterproofing & Caulking",
      "price": 71.35,
      "phone": "622-502-4808",
      "type": "Architect",
      "address": "3rd",
      "path": "HVAC",
      "imageUrl": "https://robohash.org/solutaautet.png?size=50x50&set=set1"
    },
    {
      "code": "5239bb7e-de86-49a0-9571-72a8622666c0",
      "name": "Clea",
      "description": "HVAC",
      "price": 46.67,
      "phone": "397-583-5609",
      "type": "Supervisor",
      "address": "Village Green",
      "path": "Carpenter",
      "imageUrl": "https://robohash.org/utessesed.png?size=50x50&set=set1"
    },
    {
      "code": "d6f2a064-b8fd-4be7-9eda-522bcb0cfa89",
      "name": "Maura",
      "description": "Temp Fencing, Decorative Fencing and Gates",
      "price": 70.71,
      "phone": "211-414-1456",
      "type": "Architect",
      "address": "Scott",
      "path": "Safety Officer",
      "imageUrl":
          "https://robohash.org/doloresofficiisautem.png?size=50x50&set=set1"
    },
    {
      "code": "ee2a1af3-ea60-4e98-ad71-b76b81de61ef",
      "name": "Karel",
      "description": "Fire Sprinkler System",
      "price": 4.4,
      "phone": "327-298-4808",
      "type": "Supervisor",
      "address": "Pepper Wood",
      "path": "Refridgeration",
      "imageUrl":
          "https://robohash.org/odioautrecusandae.png?size=50x50&set=set1"
    },
    {
      "code": "424943aa-43ca-4015-85bc-8d481deecfa1",
      "name": "Reeva",
      "description": "Landscaping & Irrigation",
      "price": 75.44,
      "phone": "551-607-1787",
      "type": "Project Manager",
      "address": "Porter",
      "path": "Equipment Operator",
      "imageUrl":
          "https://robohash.org/magnamtemporesoluta.png?size=50x50&set=set1"
    },
    {
      "code": "f696aaad-6996-4995-afdb-66344dc5f588",
      "name": "Fletcher",
      "description": "Roofing (Metal)",
      "price": 91.31,
      "phone": "667-472-3066",
      "type": "Supervisor",
      "address": "Warrior",
      "path": "Equipment Operator",
      "imageUrl": "https://robohash.org/impedititaquein.png?size=50x50&set=set1"
    },
    {
      "code": "eeae7a04-ae37-4f78-9c64-d20b016e03cb",
      "name": "Adrienne",
      "description": "Wall Protection",
      "price": 7.24,
      "phone": "849-708-2847",
      "type": "Electrician",
      "address": "Weeping Birch",
      "path": "Equipment Operator",
      "imageUrl":
          "https://robohash.org/laboriosamcorrupticonsequatur.png?size=50x50&set=set1"
    },
    {
      "code": "c8f46378-5c05-485e-a9a8-935d34adf617",
      "name": "Kristien",
      "description": "Sitework & Site Utilities",
      "price": 33.76,
      "phone": "961-369-1396",
      "type": "Subcontractor",
      "address": "Cordelia",
      "path": "Brickmason",
      "imageUrl": "https://robohash.org/doloremestsunt.png?size=50x50&set=set1"
    },
    {
      "code": "3d74abe2-6b72-471c-ba31-e50303e61e4f",
      "name": "Erena",
      "description": "Waterproofing & Caulking",
      "price": 39.53,
      "phone": "125-861-8790",
      "type": "Electrician",
      "address": "Nevada",
      "path": "Tile Setter",
      "imageUrl":
          "https://robohash.org/temporequoderror.png?size=50x50&set=set1"
    },
    {
      "code": "6fa8b568-a51b-4548-ab79-b8e57ad87e94",
      "name": "Elora",
      "description": "Soft Flooring and Base",
      "price": 89.14,
      "phone": "502-714-2330",
      "type": "Construction Manager",
      "address": "Reinke",
      "path": "Sheet Metal Worker",
      "imageUrl":
          "https://robohash.org/excepturivelitdolor.png?size=50x50&set=set1"
    },
    {
      "code": "ffbf79c5-0f14-4fdd-a383-4239399a8762",
      "name": "Celina",
      "description": "EIFS",
      "price": 57.37,
      "phone": "434-776-5942",
      "type": "Estimator",
      "address": "Dwight",
      "path": "Millwright",
      "imageUrl":
          "https://robohash.org/consequatursintofficia.png?size=50x50&set=set1"
    },
    {
      "code": "deb18111-0602-4b94-948d-46e726a7d84d",
      "name": "Vincenz",
      "description": "Site Furnishings",
      "price": 74.67,
      "phone": "305-825-6381",
      "type": "Supervisor",
      "address": "Shopko",
      "path": "Refridgeration",
      "imageUrl": "https://robohash.org/officiaculpaet.png?size=50x50&set=set1"
    },
    {
      "code": "0e9e461e-3276-4c5c-a976-858755b6725e",
      "name": "Mace",
      "description": "Hard Tile & Stone",
      "price": 55.55,
      "phone": "673-532-0557",
      "type": "Construction Manager",
      "address": "Sachs",
      "path": "Welder",
      "imageUrl": "https://robohash.org/utdoloremfugiat.png?size=50x50&set=set1"
    },
    {
      "code": "15bbdb48-d23b-457b-8090-49f71969a540",
      "name": "Beilul",
      "description": "Electrical and Fire Alarm",
      "price": 1.27,
      "phone": "766-171-6489",
      "type": "Construction Worker",
      "address": "Northland",
      "path": "Carpenter",
      "imageUrl":
          "https://robohash.org/ipsumexexercitationem.png?size=50x50&set=set1"
    },
    {
      "code": "e860bf3d-093f-4f19-b681-c2a53f132b0b",
      "name": "Michele",
      "description": "Electrical and Fire Alarm",
      "price": 91.37,
      "phone": "415-371-3677",
      "type": "Construction Foreman",
      "address": "Rutledge",
      "path": "Linemen",
      "imageUrl":
          "https://robohash.org/accusamusipsamqui.png?size=50x50&set=set1"
    },
    {
      "code": "030ff66c-7005-4980-9d79-fdf4d5bd245c",
      "name": "Garek",
      "description": "Glass & Glazing",
      "price": 69.62,
      "phone": "346-625-7379",
      "type": "Construction Worker",
      "address": "Vahlen",
      "path": "Welder",
      "imageUrl":
          "https://robohash.org/explicaboconsequaturaccusantium.png?size=50x50&set=set1"
    },
    {
      "code": "827f7114-aa49-4f76-801d-a7e37cc849fc",
      "name": "Tobi",
      "description": "Roofing (Metal)",
      "price": 77.12,
      "phone": "166-753-7522",
      "type": "Engineer",
      "address": "Prairieview",
      "path": "Boilermaker",
      "imageUrl":
          "https://robohash.org/molestiaeexexercitationem.png?size=50x50&set=set1"
    },
    {
      "code": "44786416-4bd2-4fef-ab88-27d3c2cd78ab",
      "name": "Zarla",
      "description": "Drilled Shafts",
      "price": 62.78,
      "phone": "170-566-4478",
      "type": "Architect",
      "address": "Blackbird",
      "path": "Pipefitter",
      "imageUrl": "https://robohash.org/laboreuttempora.png?size=50x50&set=set1"
    },
    {
      "code": "df9b50bd-9466-499c-a339-3fcb7ef8dd3e",
      "name": "Hilario",
      "description": "Painting & Vinyl Wall Covering",
      "price": 95.17,
      "phone": "841-137-1509",
      "type": "Architect",
      "address": "Oriole",
      "path": "Brickmason",
      "imageUrl":
          "https://robohash.org/voluptatumetiste.png?size=50x50&set=set1"
    },
    {
      "code": "9df258a3-1238-42bb-b0af-8e4369fa2e6c",
      "name": "Waylan",
      "description": "Glass & Glazing",
      "price": 2.89,
      "phone": "285-722-8694",
      "type": "Subcontractor",
      "address": "Gateway",
      "path": "Millwright",
      "imageUrl": "https://robohash.org/nobisautquasi.png?size=50x50&set=set1"
    },
    {
      "code": "eb97fbae-7e05-4e32-86d2-541ee7172d95",
      "name": "Hersh",
      "description": "Masonry & Precast",
      "price": 90.1,
      "phone": "959-571-1055",
      "type": "Surveyor",
      "address": "Del Mar",
      "path": "Linemen",
      "imageUrl":
          "https://robohash.org/maximequiadolorem.png?size=50x50&set=set1"
    },
    {
      "code": "d03462e4-2659-411a-95c2-fb33c4784f59",
      "name": "Shantee",
      "description": "Framing (Wood)",
      "price": 13.14,
      "phone": "412-340-5508",
      "type": "Estimator",
      "address": "Walton",
      "path": "Glazier",
      "imageUrl":
          "https://robohash.org/saepequinesciunt.png?size=50x50&set=set1"
    },
    {
      "code": "32a38c07-25dd-46f1-a790-c6ed22308201",
      "name": "Sly",
      "description": "Fire Sprinkler System",
      "price": 43.98,
      "phone": "445-137-1776",
      "type": "Supervisor",
      "address": "Susan",
      "path": "HVAC",
      "imageUrl":
          "https://robohash.org/dolorumsolutaipsum.png?size=50x50&set=set1"
    },
    {
      "code": "0d759069-4a4e-46e9-9406-1c8bef9e5237",
      "name": "Bartie",
      "description": "Curb & Gutter",
      "price": 59.42,
      "phone": "309-955-1285",
      "type": "Construction Expeditor",
      "address": "Browning",
      "path": "Safety Officer",
      "imageUrl":
          "https://robohash.org/nonlaborumvoluptas.png?size=50x50&set=set1"
    },
    {
      "code": "814a81bc-b373-4522-9c5e-5fe2aa81d6c1",
      "name": "Myrlene",
      "description": "Casework",
      "price": 46.68,
      "phone": "713-923-9652",
      "type": "Project Manager",
      "address": "Dryden",
      "path": "Safety Officer",
      "imageUrl":
          "https://robohash.org/quivoluptasincidunt.png?size=50x50&set=set1"
    },
    {
      "code": "9dcf9175-6232-4728-8f6f-adbfff29e608",
      "name": "Rosalinde",
      "description": "Roofing (Asphalt)",
      "price": 66.08,
      "phone": "114-708-0091",
      "type": "Construction Foreman",
      "address": "Fair Oaks",
      "path": "Terrazzo",
      "imageUrl":
          "https://robohash.org/itaquevoluptateeum.png?size=50x50&set=set1"
    },
    {
      "code": "b715d3a7-73f0-4ccc-bcef-5817f1873f95",
      "name": "Marius",
      "description": "Epoxy Flooring",
      "price": 89.69,
      "phone": "134-382-6609",
      "type": "Estimator",
      "address": "6th",
      "path": "Boilermaker",
      "imageUrl":
          "https://robohash.org/possimusassumendadicta.png?size=50x50&set=set1"
    },
    {
      "code": "13584ac6-2136-4f14-a877-a54dd3f421b6",
      "name": "Robinet",
      "description": "Structural & Misc Steel Erection",
      "price": 58.99,
      "phone": "775-752-5521",
      "type": "Construction Worker",
      "address": "Hansons",
      "path": "Pipefitter",
      "imageUrl":
          "https://robohash.org/molestiasinciduntquidem.png?size=50x50&set=set1"
    },
    {
      "code": "351bb994-6c95-4b56-a62c-798e4c1f4409",
      "name": "Wenda",
      "description": "Drywall & Acoustical (FED)",
      "price": 44.33,
      "phone": "351-605-3125",
      "type": "Engineer",
      "address": "Swallow",
      "path": "Concrete Finisher",
      "imageUrl":
          "https://robohash.org/aperiamoccaecatised.png?size=50x50&set=set1"
    },
    {
      "code": "fbe99276-9417-4b24-ad97-a2e450f2d64a",
      "name": "Rafe",
      "description": "Electrical",
      "price": 76.61,
      "phone": "715-587-3013",
      "type": "Construction Expeditor",
      "address": "Gina",
      "path": "Painter",
      "imageUrl":
          "https://robohash.org/porromagnamvitae.png?size=50x50&set=set1"
    }
  ]
};

Project MOCK_PROJECT_UNFINISHED = Project(
  id: 'd',
  items: <String, int>{},
  workers: <String, int>{},
  name: 'projetinho',
  email: 'bia@bia.com',
  isFinished: false,
  price: 8597.00,
  discount: 58.00,
  createdAt: DateTime.now(),
  createdBy: 'bia',
  deletedBy: null,
);

Project MOCK_PROJECT_FINISHED = Project(
  id: '3',
  items: <String, int>{},
  workers: <String, int>{},
  name: 'projetinho',
  email: 'bia@bia.com',
  isFinished: true,
  price: 8597.00,
  discount: 58.00,
  createdAt: DateTime.now(),
  createdBy: 'bia',
  deletedBy: null,
);
