make_icon = function(icon) {
  return(htmltools::tag("i", list(class = icon)))
}

make_icon_text = function(icon, text) {
  return(htmltools::HTML(paste0(make_icon(icon), " ", text)))
}

icon_link = function(icon = NULL, url = NULL) {
  if (!is.null(icon)) {
    icon <- make_icon(icon)
  }
  return(htmltools::a(href = url, icon, class = "icon-link"))
}