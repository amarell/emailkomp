class MateriModel{
  final String idMateri;
  final String judulMateri;
  final String fileMateri;
  final String fotoMateri;
  final String deskripsiMateri;
  final String tanggal;

  MateriModel({this.idMateri, this.judulMateri, this.fileMateri, this.fotoMateri, this.deskripsiMateri, this.tanggal});

  factory MateriModel.fromJson(Map<String, dynamic> json){
    return new MateriModel(
      idMateri: json['id_materi'],
      judulMateri: json['judul_materi'],
      fileMateri: 'http://192.168.43.64/appemailkomp/assets/file_materi/'+json['file_materi'],
      fotoMateri: 'http://192.168.43.64/appemailkomp/assets/foto_materi/'+json['foto_materi'],
      deskripsiMateri: json['deskripsi_materi'],
      tanggal: json['tanggal'],
    );
  }


}