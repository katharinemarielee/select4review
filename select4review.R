select4review <- function(formNames, listIDs, percent2Check){
  # formNames should be an array or list of the forms you want checked
  # listIDs is an array or list of the unique identifiers for the study
  # percent2check is the percent (as an integer) of forms that you want to check
  
  # check if percent was formatted correctly for this file
  if (percent2Check <= 1)
    stop("percent to check should be between 1 and 100")
  
  if (percent2Check >= 100)
    stop("percent to check should be between 1 and 100")
  

  nForms <- length(formNames)
  nIDs <- length(listIDs)
  
  
  # calculate how many rows you will be making to check your forms
  nsamples <- ceiling(nIDs*(percent2Check/100))
  dataOut <- c()
  
  for(i in 1:nForms){
    tempdataOut <- sample(listIDs, nsamples, replace = FALSE )
    dataOut<- cbind(dataOut,tempdataOut)
  }
  
 dataOut <- data.frame(dataOut)
 names(dataOut) <- formNames
  return(dataOut)
}

formNames <- c("form1", "form2", "form3")
myIDs <- c(101:199)
myIDs <- paste0("projectA-",myIDs)

test <- select4review(formNames, myIDs, 10)
 
test

devtools::install_github("ResourcefulSquirrel")

install.packages("devtools")
