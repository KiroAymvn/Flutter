class ListViewModel{
  String?pic;
  String?name;
  int?price;

  ListViewModel({this.pic, this.name, this.price});
}

List<ListViewModel> ListViewList=[

  ListViewModel(pic:"assets/flower/blue.jpg" ,name: "Blue ",price:25 ),
  ListViewModel(pic:"assets/flower/pink.jpg" ,name: "pink ",price: 30),
  ListViewModel(pic:"assets/flower/red.jpg" ,name: "red",price:35 ),
  ListViewModel(pic:"assets/flower/white.jpg" ,name: "white",price: 40),
  ListViewModel(pic:"assets/flower/yellow.jpeg" ,name: "yellow",price: 45),



];
