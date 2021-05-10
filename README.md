# final_project
## Scénarios utilisateur

### Scénario nominal :
1. Le développeur push son application sur GitHub
2. AWS récupère le contenu du dépôt GitHub
3. Elastic Load Balancer ne détecte aucune anomalie dans la première instance Sonar
4. Le code passe dans une instance Sonar
5. Elastic Load Balancer ne détecte aucune anomalie dans la première instance Jenkins
6. Le code passe dans une instance Jenkins
7. Elastic Load Balancer ne détecte aucune anomalie dans la première instance Sonar
8. Le code est validé par Jenkins et Sonar
9. CodeDeploy envoie le code dans les instances EC2 finales
10. Elastic Load Balancer ne détecte aucune anomalie dans l'instance EC2
11. L'utilisateur accède à l'application via l'URL fournie par l'instance EC2
 
### Instance en production en panne :

1. étapes 1 à 6 identiques au scénario nominal.
2. Elastic Load Balancer détecte une anomalie dans la première instance EC2 finale
3. Elastic Load Balancer redirige le flux de donnes vers une seconde instance EC2, de manière transparente pour l'utilisateur
4. L'utilisateur accède à l'application via l'URL fournie par la seconde instance EC2

### Instance Jenkins en panne :
1. étapes 1 à 4 identiques au scénario nominal.
2. Elastic Load Balancer détecte une anomalie dans la première instance Jenkins
3. Elastic Load Balancer redirige le flux de données vers une seconde instance Jenkins, de manière transparente pour l'utilisateur
4. Étapes suivantes identiques au scénario nominal (à partir de l'étape 7)
