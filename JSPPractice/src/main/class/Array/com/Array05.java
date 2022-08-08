package Array.com;

class Book5 {

  String title;
  String author;
  int price;

  public Book5() {

  }

  public Book5(String title, String author, int price) {
    this.title = title;
    this.author = author;
    this.price = price;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getAuthor() {
    return author;
  }

  public void setAuthor(String author) {
    this.author = author;
  }

  public int getPrice() {
    return price;
  }

  public void setPrice(int price) {
    this.price = price;
  }

  public String toString() {
    return title + "\t" + author + "\t" + price;
  }

}


public class Array05 {

  public static void main(String[] args) {
    // TODO Auto-generated method stub


    Book5[] books = {new Book5("Java7", "인경열", 20000), new Book5("열혈강호", "양재현", 2500),
        new Book5("무소유", "장혜민", 12000)};

    for (int i = 0; i < books.length; i++) {
      Book5 book = books[i];
      System.out.println(book.toString());
    }

    for (Book5 s : books) {
      System.out.println(s.toString());

    }
  }

}
