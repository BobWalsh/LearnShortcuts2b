// keycaps into html function

function ConvertKeyCaps(value) {
  var result = "";
  switch (value) {
    case "or":
      result =
        '<span id="key_or"><i class="fa fa-arrows-h kb3-plus ml-20 mr-20"></i></span>';
      break;
    case "plus":
      result =
        '<span id="key_plus"><i class="fa fa-plus kb3-plus ml-20 mr-20"></i></span>';
      break;
    case "either":
      result =
        '<span id="key_either"><i class="fa fa-arrows-h kb3-plus"></i></span>';
      break;
    case "then":
      result =
        '<span id="key_then"><i class="fa fa-long-arrow-right kb3-plus"></i></span>';
      break;
    case "key_accent":
      result =
        '<div id="key_accent" class="key"><em>~</em><br><strong>`</strong></div>';
      break;
    case "key_function12":
      result =
        '<div id="key_f12" class="key functionkey"><em><icon class="fa volume-up"></i></em><br><strong>f12</strong></div>';
      break;
    case "key_one":
      result =
        '<div id="key_one" class="key"><em>!</em><br><strong>1</strong></div>';
      break;
    case "key_two":
      result =
        '<div id="key_two" class="key"><em>@</em><br><strong>2</strong></div>';
      break;
    case "key_three":
      result =
        '<div id="key_three" class="key"><em>#</em><br><strong>3</strong></div>';
      break;
    case "key_four":
      result =
        '<div id="key_four" class="key"><em>$</em><br><strong>4</strong></div>';
      break;
    case "key_five":
      result =
        '<div id="key_five" class="key"><em>%</em><br><strong>5</strong></div>';
      break;
    case "key_six":
      result =
        '<div id="key_six" class="key"><em>^</em><br><strong>6</strong></div>';
      break;
    case "key_seven":
      result =
        '<div id="key_seven" class="key"><em>&amp;</em><br><strong>7</strong></div>';
      break;
    case "key_eight":
      result =
        '<div id="key_eight" class="key"><em class="center-character">*</em><br><strong class="numerial-adjust">8</strong></div>';
      break;
    case "key_nine":
      result =
        '<div id="key_nine" class="key"><em>(</em><br><strong>9</strong></div>';
      break;
    case "key_zero":
      result =
        '<div id="key_zero" class="key"><em>)</em><br><strong>0</strong></div>';
      break;
    case "key_hyphen":
      result =
        '<div id="key_hyphen" class="key"><em>_</em><br><strong>-</strong></div>';
      break;
    case "key_equals":
      result =
        '<div id="key_equals" class="key"><em>+</em><br><strong>=</strong></div>';
      break;
    case "key_backspace":
      result =
        '<div id="key_backspace" class="key wide_2"><span class="right"><strong>delete</strong></span></div>';
      break;
    case "key_tab":
      result =
        '<div id="key_tAB" class="key wide_1"><span class="left"><strong>tab</strong></span></div>';
      break;
    case "key_q":
      result =
        '<div id="key_q" class="key single single_letter"><strong>Q</strong></div>';
      break;
    case "key_w":
      result =
        '<div id="key_w" class="key single single_letter"><strong>W</strong></div>';
      break;
    case "key_e":
      result =
        '<div id="key_e" class="key single single_letter"><strong>E</strong></div>';
      break;
    case "key_r":
      result =
        '<div id="key_r" class="key single single_letter"><strong>R</strong></div>';
      break;
    case "key_t":
      result =
        '<div id="key_t" class="key single single_letter"><strong>T</strong></div>';
      break;
    case "key_y":
      result =
        '<div id="key_y" class="key single single_letter"><strong>Y</strong></div>';
      break;
    case "key_u":
      result =
        '<div id="key_u" class="key single single_letter"><strong>U</strong></div>';
      break;
    case "key_i":
      result =
        '<div id="key_i" class="key single single_letter"><strong>I</strong></div>';
      break;
    case "key_o":
      result =
        '<div id="key_o" class="key single single_letter"><strong>O</strong></div>';
      break;
    case "key_p":
      result =
        '<div id="key_p" class="key single single_letter"><strong>P</strong></div>';
      break;
    case "key_right_bracket":
      result =
        '<div id="key_right_bracket" class="key"><em>{</em><br><strong>[</strong></div>';
      break;
    case "key_left_bracket":
      result =
        '<div id="key_left_bracket" class="key"><em>}</em><br><strong>]</strong></div>';
      break;
    case "key_caps_lock":
      result =
        '<div id="key_caps_lock" class="key wide_4"><em>&#8226;</em><span class="left"><strong>caps lock</strong></span></div>';
      break;
    case "key_a":
      result =
        '<div id="key_a" class="key single single_letter"><strong>A</strong></div>';
      break;
    case "key_s":
      result =
        '<div id="key_s" class="key single single_letter"><strong>S</strong></div>';
      break;
    case "key_d":
      result =
        '<div id="key_d" class="key single single_letter"><strong>D</strong></div>';
      break;
    case "key_f":
      result =
        '<div id="key_f" class="key single single_letter"><strong>F</strong></div>';
      break;
    case "key_g":
      result =
        '<div id="key_g" class="key single single_letter"><strong>G</strong></div>';
      break;
    case "key_h":
      result =
        '<div id="key_h" class="key single single_letter"><strong>H</strong></div>';
      break;
    case "key_j":
      result =
        '<div id="key_j" class="key single single_letter"><strong>J</strong></div>';
      break;
    case "key_k":
      result =
        '<div id="key_k" class="key single single_letter"><strong>K</strong></div>';
      break;
    case "key_l":
      result =
        '<div id="key_l" class="key single single_letter"><strong>L</strong></div>';
      break;
    case "key_semicolon":
      result =
        '<div id="key_semicolon" class="key"><em class="">:</em><br/><strong>;</strong></div>';
      break;
    case "key_apostrophe":
      result =
        '<div id="key_apostrophe" class="key"><em>"</em><br><strong>&#39;</strong></div>';
      break;
    case "key_enter":
      result =
        '<div id="key_enter" class="key wide_4"><em class="right">enter</em><span class="right"><strong>return</strong></span></div>';
      break;
    case "key_left_shift":
      result =
        '<div id="key_left_shift" class="key wide_5"><span class="has-text-left"><strong>shift</strong></span></div>';
      break;
    case "key_z":
      result =
        '<div id="key_z" class="key single single_letter"><strong>Z</strong></div>';
      break;
    case "key_x":
      result =
        '<div id="key_x" class="key single single_letter"><strong>X</strong></div>';
      break;
    case "key_c":
      result =
        '<div id="key_c" class="key single single_letter"><strong>C</strong></div>';
      break;
    case "key_v":
      result =
        '<div id="key_v" class="key single single_letter"><strong>V</strong></div>';
      break;
    case "key_b":
      result =
        '<div id="key_b" class="key single single_letter"><strong>B</strong></div>';
      break;
    case "key_n":
      result =
        '<div id="key_n" class="key single single_letter"><strong>N</strong></div>';
      break;
    case "key_m":
      result =
        '<div id="key_m" class="key single single_letter"><strong>M</strong></div>';
      break;
    case "key_comma":
      result =
        '<div id="key_comma" class="key"><em>&lt;</em><br><strong>,</strong></div>';
      break;
    case "key_period":
      result =
        '<div id="key_period" class="key"><em>&gt;</em><br><strong>.</strong></div>';
      break;
    case "key_forward_slash":
      result =
        '<div id="key_forward_slash" class="key"><em class="has-text-centered top-key-char">?</em><span class="has-text-centered bottom-key-char"><strong>/</strong></span></div>';
      break;
    case "key_pipe":
      result =
        '<div id="key_pipe" class="key singletop"><em class="has-text-centered top-key-char">|</em><span class="has-text-centered bottom-key-char"><strong>&#92;</strong></span></div>';
      break;
    case "key_questionmark":
      result =
        '<div id="key_questionmark" class="key"><em class="has-text-centered top-key-char">?</em><span class="has-text-centered bottom-key-char"><strong>/</strong></span></div>';
      break;
    case "key_right_shift":
      result =
        '<div id="key_right_shift" class="key wide_5"><span class="right"><strong>shift</strong></span></div>';
      break;
    case "key_left_ctrl":
      result =
        '<div id="key_left_ctrl" class="key wide_1"><span class="left"><strong>ctrl</strong></span></div>';
      break;
    case "key_fn":
      result =
        '<div id="key_fn" class="key wide_1"><span class="left"><strong>fn</strong></span></div>';
      break;
    case "key_left_alt":
      result =
        '<div id="key_left_alt" class="key wide_1"><em class="left">alt</em><span class="left"><strong>option</strong></span></div>';
      break;
    case "key_left_cmd":
      result =
        '<div id="key_left_cmd" class="key wide_3a"><em class="right">&#8984;</em><span class="right toprow-padding"><strong>command</strong></span></div>';
      break;
    case "key_space":
      result = '<div id="key_space" class="key wide_5"></div>';
      break;
    case "key_right_cmd":
      result =
        '<div id="key_right_cmd" class="key wide_3a"><em class="right">&#8984;</em><span class="right"><strong>command</strong></span></div>';
      break;
    case "key_right_alt":
      result =
        '<div id="key_right_alt" class="key wide_1"><em class="right">alt</em><span class="right"><strong>option</strong></span></div>';
      break;
    case "key_right_ctrl":
      result =
        '<div id="key_right_ctrl" class="key wide_1"><span class="text-center"><strong>control</strong></span></div>';
      break;
    case "key_up":
      result =
        '<div id="key_up" class="key"><div class="triangle up"></div></div>';
      break;
    case "key_down":
      result =
        '<div id="key_down" class="key"><div class="triangle down"></div></div>';
      break;
    case "key_right":
      result =
        '<div id="key_right" class="key arrow_key_filler"><div class="triangle right"></div></div>';
      break;
    case "key_left":
      result =
        '<div id="key_left" class="key arrow_key_filler"><div class="triangle left"></div></div>';
      break;
  }
  return result;
}
