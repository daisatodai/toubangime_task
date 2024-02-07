document.addEventListener('DOMContentLoaded', function () {
  // ここにスクリプトを配置するか、関数を呼び出す
  playVideo();
});

function playVideo() {
  const videoPlayer = document.getElementById("videoPlayer");

  if (videoPlayer) {
      // 以下のコードを実行
      videoPlayer.onended = function () {
          $("#result h3").text("朝礼&終礼の当番：" + selectMembers());
      }};
} 

const todayMember = [];  // 本日の参加メンバーを入れる配列を新規作成

function start() {
  // 今日のメンバーを選択
  todayMember.length = 0; // 配列をクリアする
  todayMember.push(
    ...$('input[type="checkbox"]:checked').map(function () {
      return $(this).val(); // チェックのついたメンバーを配列に格納
    }).get()
  );

  const len = todayMember.length;
  for (let i = 0; i < len; i++) {
    const r = Math.floor(Math.random() * todayMember.length);
    const v = todayMember.splice(r, 1)[0];
    
    // 結果を表示
    $("#result h3").text("朝礼&終礼の当番：" + v +"さん");
  }
}