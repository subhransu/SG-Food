//
//  ViewController.swift
//  SGFood
//
//  Created by Behera, Subhransu on 6/10/16.
//  Copyright © 2016 subh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let foodNames = ["Chicken Rice", "Kaya Toast", "Laksa", "Chilli Crab", "Nasi Lemak", "Durian", "Ice Kachang", "Roti Prata"]
  
  let foodImageNames = ["chicken_rice", "kaya_toast", "laksa", "chilli_crab", "nasi_lemak", "durian", "Ice-Kachang", "roti_prata"]
  
  let foodDescription = ["More accurately known as Hainanese Chicken rice, this is one of Singapore’s most well-known and celebrated dish. No coffee shop in Singapore is complete without a chicken rice stall. The whole chicken is steeped in sub-boiling pork and chicken bone stock to absorb the flavours and cook. Some shops will also dip the bird in ice after cooking to create a jelly-like finish on the chicken’s skin. Variations also include roasting the chicken which is called ‘black chicken’, in contrast to the ‘white chicken’. The stores with better service will de-bone the chicken for you.",
                         "The one and only traditional Singaporean breakfast- Kaya toast with soft-boiled eggs. The traditional bread is an old school rectangular white loaf, toasted with a bread grill, lathered with coconut or egg kaya then slapped with a thick slice of SCS butter to slowly melt within 2 slices of warm bread. This is the classic kaya toast. Variations include using thinly sliced brown bread, round buns or ‘Jiam Tao Loh Tee’ like a French baguette.",
                         "Laksa is a dish merged from Chinese and Malay elements otherwise known as Peranakan culture. There are 2 main types of laksa- curry laksa and asam laksa. Curry laksa is more predominant in Singapore, while assam laksa is found more in Malaysian regions like Penang Laksa. In fact there loads of variants of Laksas differing in fish type, broth and even noodles.",
                         "The 2 most famous styles of crab cooking in Singapore are with a sweet, spicy tomatoish chilli sauce, or with black pepper sauce. Chilli crabs are usually eaten along with fried mantous (buns), which are dipped in the luscious chilli sauce. Well prepared crabs go through a 2 step cooking process, boiled first then fried so that the meat doesn’t stick to the shell. Recently, many popular styles of cooking have surfaced as well, like salted-egg crabs or crab bee hoon.",
                         "Nasi Lemak is a very versatile dish and what was once a breakfast item, is now eaten during lunch and dinner too. Traditionally wrapped in banana leaves, Nasi Lemak is a deeply rooted Malay coconut rice dish. The rice is steamed with coconut cream to give it a sweet fragrance. The typical Nasi Lemak set comes with Ikan Bilis (anchovies), peanuts, egg and sambal. A good sambal is arguably the mark of a good Nasi Lemak.",
                         "Widely regarded by many as the ‘king of fruits’ in Southeast Asia and the national fruit of Singapore, Singapore even has a building modeled after one (Esplanade). Most foreigners are turned off by the strong ‘pungent’ smell, while locals adore the flesh so much they turn it into desserts, cakes, tarts and even shakes.",
                         "A grinding machine is used to produce the shaved ice mountain on top of a bowl of assorted ingredients like red bean, attap chee (palm seed), agar agar jelly, chendol, grass jelly or any other filling desired. Evaporated or condensed milk is then drizzled on the top along with red rose syrup and sarsi syrup to produce the multi-coloured effect. Variations may include drizzling with gula melaka, adding ice-cream or other novelty toppings like Durian or chocolate syrup.",
                         "A fried flour-based pancake, Roti Prata popular variants include adding cheese, eggs, mushroom, onions or even chocolates inside the batter. The dough is flipped multiple times into a large thin layer before folding the edges in. Some outlets also flip the dough so thin it turns crispy when fried on the metal pan. These are called ‘paper’ or ’tissue’ prata. Prata is served with fish or chicken curry while some people like myself like to sprinkle sugar with it."
                         ]

  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.title = "SG Food"
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    guard let tagIndex = sender?.tag else {
      return
    }
    
    let destinationVC = segue.destinationViewController as? DestinationViewController
    destinationVC?.foodName = foodNames[tagIndex]
    destinationVC?.foodDescription = foodDescription[tagIndex]
    destinationVC?.foodImgName = foodImageNames[tagIndex]
  }

}

