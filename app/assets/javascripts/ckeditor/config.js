CKEDITOR.editorConfig = function (config) {
  config.toolbar = [
    {name: "editing", items : ["Undo", "Redo", "Find", "Replace", "SpellChecker", "Scayt"]},
    {name: "basicstyles", items : ["Bold", "Italic", "Underline", "Strike"]},
    {name: "colors", items : ["RemoveFormat", "TextColor", "BGColor"]},
    {name: "paragraph", items : ["JustifyLeft", "JustifyCenter", "JustifyRight",
      "JustifyBlock", "-", "NumberedList", "BulletedList", "Outdent", "Indent"]},
    {name: "insert", items : ["Image", "Table", "Link"]},
    {name: "styles", items : ["Styles", "Format", "Font", "FontSize"]}
 ];
  config.height = 350;
  config.extraPlugins = "lineutils";
  config.font = "Times New Roman"
}
