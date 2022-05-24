@Preview
@Entry
@Component
struct Index{
  scroller: Scroller = new Scroller()
  build()
  {
    Column() {
      Flex({justifyContent:FlexAlign.SpaceBetween}){
        Image($r("app.media.apps")).width(40).height(40)
        Image($r("app.media.avatar")).width(40).height(40)
      }.padding({bottom:10})
      Text("Discover").width('95%').fontSize(24).fontWeight(FontWeight.Bold).fontFamily('calibri').padding({top:10})
      Text("our new items.").width('95%').fontSize(24).fontWeight(FontWeight.Bold).padding({bottom: 10}).fontFamily('calibri').padding({bottom:10})
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        TextArea({placeholder: "Search..."}).width(250).padding({top:10})
        Image($r("app.media.menu")).width(40).height(40).padding({right:10})
      }.padding({bottom:20})
      Flex({justifyContent: FlexAlign.SpaceBetween, direction: FlexDirection.Row}) {
        Image($r("app.media.sh4")).width(60).height(60).borderRadius(5);
        Flex({direction: FlexDirection.Column}) {
          Text("Running Unisex Shoes").fontSize(15)
          Text("Coming Soon...").fontSize(15).fontColor($r("app.color.deepblue"))
        }.width(150).padding(5)
        Flex({justifyContent: FlexAlign.Center, direction: FlexDirection.Column}) {
          Toggle({ type: ToggleType.Switch, isOn: false }).width(40).height(20)
          Text("Notify me")
        }
      }.height(80).padding(10).borderRadius(10).backgroundColor($r("app.color.bg1"))

      Flex({justifyContent:FlexAlign.SpaceBetween,direction:FlexDirection.Row}){
        Text("Categories").fontSize(20).fontWeight(FontWeight.Bold).fontFamily('calibri').padding({top:10})
        Flex({direction:FlexDirection.Row,justifyContent:FlexAlign.End}){
          Text("See All").fontSize(12).padding({right:10,top:3})
          Image($r("app.media.next")).width(20).height(20)
        }.padding({top:20}).width(150)
      }.padding({top:20,bottom:25})

      Scroll(this.scroller) {
        Row({space: 10}) {
          Button('Sneakers', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0x317aff).width(120)
          Button('Boots', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.bg2")).width(120).fontColor(0x000000)
          Button('Sandals', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.bg2")).width(120).fontColor(0x000000)
          Button('Slippers', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.bg2")).width(120).fontColor(0x000000)
        }
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On)
      .margin({bottom: 5});

      Flex({justifyContent:FlexAlign.SpaceBetween,direction:FlexDirection.Row}){
        Text("Popular Shoes").fontSize(20).fontWeight(FontWeight.Bold).fontFamily('calibri').padding({top:10})
        Flex({direction:FlexDirection.Row,justifyContent:FlexAlign.End}){
          Text("View All").fontSize(12).padding({right:10,top:3})
          Image($r("app.media.next")).width(20).height(20)
        }.padding({top:15}).width(150)
      }.padding({top:5,bottom:30})

      Flex({justifyContent: FlexAlign.SpaceBetween}){
        Flex({direction: FlexDirection.Column}) {
          Image($r("app.media.sh1")).height(160).padding({right: 5}).borderRadius(10)
          Text('Running Unisex Shoes Forest Green').fontSize(12).padding(8).fontWeight(FontWeight.Bold)
          Text('₹ 1499').padding({left: 20}).fontSize(11)
        }
        Flex({direction: FlexDirection.Column}) {
          Image($r("app.media.sh2")).height(160).padding({left: 5}).borderRadius(10)
          Text('Running Unisex Shoes Edition Unique Purple').fontSize(12).padding(8).fontWeight(FontWeight.Bold)
          Text('₹ 1299').padding({left: 20}).fontSize(11)
        }
      }.height(200)

      Divider().height(20).width('95%')

      Flex({justifyContent: FlexAlign.SpaceAround, direction: FlexDirection.Row}) {
        Column() {
          Image($r("app.media.home")).width(30).height(30);
          Text("Home").fontSize(12);
        }
        Column() {
          Image($r("app.media.categories")).width(30).height(30);
          Text("Categories").fontSize(12);
        }.opacity(0.6)
        Column() {
          Image($r("app.media.notification")).width(30).height(30);
          Text("Notification").fontSize(12);
        }.opacity(0.6)
        Column() {
          Image($r("app.media.cart")).width(30).height(30);
          Text("Cart").fontSize(12);
        }.opacity(0.6)
      }

    }.padding(20)

  }
}

