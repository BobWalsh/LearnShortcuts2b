var this_page;



$(document).ready(function () {
  this_page = $(".vmargin-dss")
    .first()
    .data("page");

  if (this_page == "cheatsheets") {
    // convert keycaps to actual keys
    $(".interface-1").each(function (i, val) {
      str = $(".interface-1").eq(i).text() + "";
      str = str.trim();
      // $("#interface-x").text(str);
      temp_var = str;
      keyarray = temp_var.split(", ");
      temp_var2 = "";
      $.each(keyarray, function (i, val) {
        temp_var2 = temp_var2 + ConvertKeyCaps(val);
      });
      $(".interface-1").eq(i).text("");
      $(".interface-1").eq(i).append(temp_var2);
    });
  };
});