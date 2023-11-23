# angelo.magalhaes
ynov
 Crée un dossier "terraform"  qui vous servira pour cet exercices 

![image](https://github.com/Lo0kii/angelo.magalhaes/assets/109228312/d8615659-c7ec-4171-9b8b-f1969ad08e44)

Installer Terraform:
Suivez le guide d'installation fourni pour votre plateforme (Windows, MacOS, Linux). Téléchargez et installez Terraform à partir du site officiel. (mettez le .exe dans le dossier crée)

 Préparer l'environnement AWS:
  
Accès aux Identifiants de Sécurité:

Dans la barre de recherche en haut de la console AWS, tapez « IAM » 
Dans le panneau de navigation IAM, cliquez sur « Users » pour voir la liste des utilisateurs.
crée un nouvelle utilisateur, cochez « Fournir aux utilisateurs l'accès à la console de gestion AWS ».
Puis « Je souhaite créer un utilisateur IAM », générez le mot de passe qui vous seras donnée par la suite
Cliquez sur « Suivants » pour attribuer les permissions appropriées à cet utilisateur 

Obtention des Clés d'Accès:

aller dans votre nouveau utilisateurs >  Informations d'identification de sécurité , vous allez voir AWS Access Key ID » et le « Secret Access Key ».

Utilisation des Clés d'Accès
Après avoir obtenu ces clés, vous pouvez les utiliser pour configurer l'AWS CLI en exécutant aws configure dans votre terminal, elles sont indispensable pour configurer main.tf

Installez l'AWS CLI et configurez les informations d'identification AWS à l'aide de la commande aws configure.

Écriture du code Terraform:

Créez un fichier principal, généralement nommé main.tf, dans votre répertoire de projet.
Configurez le provider AWS en spécifiant la région, par exemple :

 (main.tf)

 Configure AWS Provider
provider "aws" {
  region = "us-west-3"
  access_key = "*"
  secret_key = "*"
}

 (Define an AWS EC2 Instance)
resource "aws_instance" "tst" {
  ami           = "ami-0302f42a44bf53a45"
  instance_type = "t2.micro"
}

Initialisation et déploiement:

Exécution de terraform init  pour initialiser le répertoire.

Exécution de terraform plan  pour voir un aperçu des changements.

Exécution de terraform apply  pour créer l'infrastructure.

Nettoyage pour tuer l'infra: 
Utilisation de terraform destroy pour supprimer l'infrastructure lorsque vous avez terminé.
