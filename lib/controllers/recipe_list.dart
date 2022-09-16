import 'package:flutter_food_recipe/models/recipe.dart';

List<Recipe> recipesFromList() {
  return [
    Recipe(
        name: "Cranberry Matcha Sugar Cookies",
        image:
            "https://lh3.googleusercontent.com/QlK1CmwuzaEJWXd8kkM2lKQp5t-7MtsRor9HpbqWTHZUXMdIglfyRZGqZINi3eSmTZRNQcoHhdbbqtmcTIAw=s360",
        totalTime: "30 min",
        rating: 3.0,
        description:
            "If you love decorated sugar cookies but not artificial food coloring, try Ali's novel twist on the classic using dried red cranberries and a dusting of green matcha powder."),
    Recipe(
        name: "Quick & Easy Strawberry Jam",
        image:
            "https://lh3.googleusercontent.com/wVL4nSKpgf68JYhNT8z-Fd_kfGQnqEPqW7rlr80_iEalCJX8HUM_LOXQgyNGMR_jsHPkesGtY1Mpf7Uh9oYLAQ=s360",
        totalTime: "1 hr 25 min",
        rating: 3.0,
        description:
            "Cillum culpa ullamco commodo culpa occaecat do ullamco dolor consectetur mollit exercitation voluptate velit ut. Non consequat commodo ullamco laborum ut anim ea reprehenderit et. Quis est ea amet commodo reprehenderit enim est nostrud anim sit. Consequat pariatur veniam veniam et culpa anim Lorem Lorem laboris consequat. Aliquip excepteur cillum pariatur pariatur laborum anim ullamco proident reprehenderit Lorem mollit elit ea. Fugiat ullamco qui tempor consectetur ullamco deserunt ut mollit consequat. Ullamco quis cupidatat consectetur anim commodo velit minim laborum aliqua velit id velit voluptate."),
    Recipe(
        name: "Real California Milk",
        image:
            "https://lh3.googleusercontent.com/8PUte_dlkSkpl2wQvQ5z3SI_kj1onQzAzhfz3CoOEpSDpUBG13dTrEfhphHJJ-MdN8tdd7oJUF7Jmza2JmKsI3qdnz3dfBMYRBE=s360",
        totalTime: "25 min",
        rating: 3.0,
        description:
            "Reprehenderit amet ut do nostrud voluptate. Est aliqua et cupidatat Lorem velit qui ullamco non qui veniam mollit culpa tempor laborum. Sit sit dolor ad consequat ad reprehenderit do."),
    Recipe(
        name: "Everyday Made Fresh",
        image:
            "https://lh3.googleusercontent.com/IUKSz-I6DkfEKiQNEEBBoU1RjDMC0AbtsCVkAuqstfL9CwhqL1_lgNMZfFBHeaUrOQFhfFANPyvBBQ_uMsl5irw=s360",
        totalTime: "1 hr",
        rating: 4.0,
        description:
            "Nostrud mollit magna velit pariatur commodo esse. Ad nostrud dolor laboris occaecat laboris eiusmod minim pariatur qui do labore nisi. Aliqua nisi in commodo et sit incididunt aliqua qui tempor magna consequat ullamco."),
    Recipe(
        name: "Homemade Grenadine",
        image:
            "https://lh3.googleusercontent.com/_d0IMN5MaHsJbtoiBVQE5l5XMkvo_Z7TxuZ1bDMRVN5Hxji4c-k_WtLIQ9u592Ga8DdTa9hhfdiGXkyt6mujgpEtcqg5Cp0fggQ=s360",
        totalTime: "1 hr 45 min",
        rating: 3.0,
        description:
            "We use the natural color of the beautiful California pomegranate and sweeten it up with sugar."),
    Recipe(
        name: "All Day I Dream About Food",
        image:
            "https://lh3.googleusercontent.com/zkVHm-V4XqiLecWwrXRXNTsLhDV6H_ZhE0M-Ny26uQxFKkhU-FsnpXhG4bum3eAytEzTCBgp2p8wGbYWXI3Ykg=s360",
        totalTime: "15 min",
        rating: 4.0,
        description:
            "Et aute labore nulla ut consequat duis enim qui dolor magna ut. Ullamco reprehenderit ex sunt qui irure reprehenderit in est minim anim sunt mollit consequat. Proident consectetur ea exercitation amet incididunt excepteur. Labore consectetur sunt sint sunt dolore quis culpa quis dolore. Aute voluptate velit fugiat eu occaecat enim amet nulla incididunt cupidatat aute sint non laborum. Cillum aliquip laborum pariatur aliquip culpa ullamco non deserunt amet commodo. Lorem occaecat officia incididunt veniam mollit consequat aliqua."),
    Recipe(
        name: "Stephanie Izard",
        image:
            "https://lh3.googleusercontent.com/0aVTiIwX39Vapz2myHk4QhNdH14-fpAhgyMGx1Mw1Rndg3OHrCAP4xkVUZ4hdkKdQ-s9ho3eAi10lq2sgfNRrWs=s360",
        totalTime: "13 hr 30 min",
        rating: 3.0,
        description:
            "You read that right. Cheez-It® ice cream is here! Learn the secret to making ice cream without an ice cream maker, and indulge your inner child with a chocolate-and-peanut-butter sundae topping. Be sure to plan ahead - this recipe needs some time to 'chill'! Cheez-It® is a registered trademark of Kellogg North America Company."),
    Recipe(
        name: "California Grown",
        image:
            "https://lh3.googleusercontent.com/0vsAdNvU7nT5kwUSKYNFCKyNY9-jsSUpOWeSk392JpZNrgJpDp9UDx_RKfqH18OvbF2nsMhrLHqlEJQqsYq8uw=s360",
        totalTime: "2 hr 20 min",
        rating: 3.0,
        description:
            "Minim mollit ad nisi enim dolor esse ipsum eu in. Cillum velit ad adipisicing laboris officia Lorem culpa. Voluptate velit eu voluptate dolor. Lorem minim elit ut laboris ea sunt dolor consequat pariatur. Pariatur cupidatat labore occaecat ullamco magna nostrud culpa officia et officia do ex."),
    Recipe(
        name: "Betty Crocker",
        image:
            "https://lh3.googleusercontent.com/f2YWE1cnuPWp5Zxw8bv7KXcG-CRc7PRq5q8EMrkfs8tKiEd4gS3aJNGiCT7ZUh8vIh5kfxq6DeHH7JfyWbrrGJsN3gYEBOjBEik=s360",
        totalTime: "2 hr 20 min",
        rating: 3.0,
        description:
            "Tempor anim cillum do culpa voluptate nulla in et labore ullamco commodo incididunt velit. Et minim consectetur cillum non incididunt proident exercitation et nulla ea eu mollit. Labore nulla laborum consequat qui adipisicing veniam pariatur occaecat mollit non nostrud."),
    Recipe(
        name: "Simply Recipes",
        image:
            "https://lh3.googleusercontent.com/IYx1dXKSj7ohoCQboBtWrb729QdFKZPeq-9VDDjB1kMs3cA_2o-kc8gXEaRdG3AFIK8lj3MPxAlULJpU6X72npI=s360",
        totalTime: "1 hr 45 min",
        rating: 4.0,
        description:
            "Anim est veniam non sit ullamco. Eiusmod proident excepteur fugiat pariatur incididunt reprehenderit consectetur nulla est in proident. Laboris culpa pariatur in dolore ullamco fugiat minim incididunt.")
  ];
}
