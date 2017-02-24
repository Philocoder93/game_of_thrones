House.destroy_all
Character.destroy_all

targaryen = House.create({name:'targaryen',img_url:'http://awoiaf.westeros.org/images/thumb/1/1e/House_Targaryen.svg/250px-House_Targaryen.svg.png',house_word:'fire_and_blood'})
targaryen.characters.create({name:'arys',dead:true,img_url:'http://www.telegraph.co.uk/content/dam/tv/2016/06/01/mad-king-aerys-targaryen-large_trans_NvBQzQNjv4Bq3480UNUU8UfSxDSaY1n7MBMSxGIR1rd_-iNIxL4YeIk.jpg'})
