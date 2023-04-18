class Book {
  late final String id;
  late final String name;
  late final String author;
  late final String price;
  late final String description;
  late final String category;
  late final double stars;
  late String image;

  Book({
    required this.id,
    required this.name,
    required this.author,
    required this.price,
    required this.description,
    required this.category,
    required this.stars,
    required this.image,
  });

//List of book instance
  static List<Book> bookData() {
    return [
      Book(
          id: '1',
          name: 'The Story of Marie Curie',
          author: 'Susan R Katy',
          price: '10.99',
          description:
              'To Kill a Mockingbird is a novel by Harper Lee published in 1960. It is a Southern Gothic and a Bildungsroman. It was Lee\'s only published book until Go Set a Watchman, an earlier draft of To Kill a Mockingbird, was published on July 14, 2015.',
          category: 'Fiction',
          stars: 4,
          image: 'assets/images/curie.png'),
      Book(
          id: '2',
          name: 'At Home with Mohammed Ali',
          author: 'Hana Alli',
          price: '12.99',
          description:
              'The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald. Set in the Jazz Age on Long Island, the novel depicts narrator Nick Carraway\'s interactions with mysterious millionaire Jay Gatsby and Gatsby\'s obsession to reunite with his former lover, Daisy Buchanan.',
          category: 'Fiction',
          stars: 4,
          image: 'assets/images/muhammadAli.png'),
      Book(
          id: '3',
          name: 'Alex Haley',
          author: 'Jane Austen',
          price: '8.99',
          description:
              'Pride and Prejudice is a romantic novel of manners written by Jane Austen in 1813. The novel follows the character development of Elizabeth Bennet, the dynamic protagonist of the book who learns about the repercussions of hasty judgments and comes to appreciate the difference between superficial goodness and actual goodness.',
          category: 'Fiction',
          stars: 5,
          image: 'assets/images/malcolm.png'),
      Book(
          id: '4',
          name: 'Becoming Michelle Obama',
          author: 'Michelle Obama',
          price: '14.99',
          description:
              'The Lord of the Rings is an epic fantasy novel written by English author J.R.R. Tolkien. The novel follows hobbit Frodo Baggins as he and a Fellowship embark on a quest to destroy the One Ring, and thus ensure the destruction of its maker, the Dark Lord Sauron.',
          category: 'Fiction',
          stars: 3,
          image: 'assets/images/obama.png'),
      Book(
          id: '5',
          name: 'The Story of Walt Disney',
          author: 'Susan B Katz',
          price: '9.99',
          description:
              '1984 is a dystopian social science fiction novel by English novelist George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwell\'s ninth and final book completed in his lifetime.',
          category: 'Fiction',
          stars: 2,
          image: 'assets/images/disney.png'),
      Book(
          id: '6',
          name: 'The Happiest Man on Earth',
          author: 'J. D. Salinger',
          price: '11.99',
          description:
              'The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adults but is often read by adolescents for its themes of angst, alienation, and as a critique on superficiality in society.',
          category: 'Fiction',
          stars: 4,
          image: 'assets/images/happiest.png')
    ];
  }
}
