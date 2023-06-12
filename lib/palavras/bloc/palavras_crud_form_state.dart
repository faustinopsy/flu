class PalavrasCrudFormState {
  final String palavra;
  final bool aPalavraEhValida;
  final String ajuda;
  final bool aAjudaEhValida;
  final bool formularioEnviadoComSucesso;
  bool get isFormValid => aPalavraEhValida && aAjudaEhValida;
  const PalavrasCrudFormState(
      {required this.palavra,
      required this.aPalavraEhValida,
      required this.ajuda,
      required this.aAjudaEhValida,
      required this.formularioEnviadoComSucesso});
  factory PalavrasCrudFormState.initial() {
    return PalavrasCrudFormState(
        palavra: '',
        aPalavraEhValida: false,
        ajuda: '',
        aAjudaEhValida: false,
        formularioEnviadoComSucesso: false);
  }
}
