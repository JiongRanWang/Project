
set.seed(123)

MML = function(words.clean){
  MML = list()
for (i in 1: (length(words.clean)-1)){
  w = words.clean[i]
  if(w %in% names(MML)){
    MML[[w]] = c(MML[[w]], words.clean[i+1])
  }else{
    MML[[w]] = c(words.clean[i+1])
  }
}
  return(MML)
}

