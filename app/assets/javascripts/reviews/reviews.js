(function() {
  // When using more than one `textarea` on your page, change the following line to match the one you’re after
  var textarea = document.getElementsByTagName('textarea')[0],
      preview = document.createElement('div'),
      convert = new Markdown.getSanitizingConverter().makeHtml;
  function update() {
   preview.innerHTML = convert(textarea.value);
  }
  // Continue only if the `textarea` is found
  if (textarea) {
   preview.id = 'preview';
   // Insert the preview `div` after the `textarea`
   textarea.parentNode.insertBefore(preview, textarea.nextSibling);
   textarea.oninput = function() {
    textarea.onkeyup = null;
    update();
   };
   textarea.onkeyup = update;
   // Trigger the `onkeyup` event
   textarea.onkeyup.call(textarea);
  };
 }());