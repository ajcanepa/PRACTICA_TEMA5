# Las correspondencias en este caso cambian y tenemos que la *Timina* es reemplazada por el *Uracilo*
Transcripcion <- function(secuencia_dna = seq_dna){
  seq_arn = chartr("T","U", secuencia_dna)
  seq_arn = paste(seq_arn, collapse = "")
  return(seq_arn)
}