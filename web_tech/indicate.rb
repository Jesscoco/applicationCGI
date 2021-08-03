# Démarrez le programme CGI pour recevoir et renvoyer des données
require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンス（反応）を返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # Extraire les données reçues avec cgi['input'] et les assigner à une variable locale
  # Extraction d'informations à partir d'un repère "d'entrée".
  get = cgi['input']
  undefined
  <html>
    <body>
      <p>受け取った文字列は下記になります</p>
      <p>文字列：#{get}</p>
    </body>
  </html>
}
