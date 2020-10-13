
$("#samurai").on({
  'mouseenter': function() {
// const messages = ['負ける人のおかげで勝てるんだよな','つまづいたっていいじゃないか人間だもの','しあわせはいつも自分のこころがきめる',
//                   '心の中で思ったなら、その時スデに行動は終わっている','そのときどう動く','親切という名のおせっかいそっとしておくおもいやり','ベストを尽くして失敗したら、ベストを尽くしたってことさ',
//                 '他人のものさし自分のものさしそれぞれ寸法がちがうんだな','その根っこは見えない　その見えないところに大事な点がある','七転八倒つまづいたり転んだりするほうが自然なんだな人間だもの','一生勉強　一生青春'];
// const messageNo = Math.floor( Math.random() * messages.length);

    $(".balloon1").css("display", "inline-block");  
    $("#balloon1_p");

  },
  'mouseleave': function() {
    $(".balloon1").css("display", "none");
   

  }
})

