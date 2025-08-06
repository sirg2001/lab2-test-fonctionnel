# README – Lab 2 : Tests fonctionnels UI – Customer Service

## 1. Description
Ce lab consiste à automatiser des tests fonctionnels de l’application **CRM Automation Playground** :
https://automationplayground.com/crm/index.html

Objectif :
- Tester la fonctionnalité **Customer Service** via Robot Framework et SeleniumLibrary.
- Créer des scénarios **passants** et **négatifs** (avec gestion des erreurs attendues).

## 2. Prérequis
- **Python 3.8+**
- **Google Chrome** installé
- **ChromeDriver** correspondant à ta version de Chrome
- Modules Python nécessaires (voir `requirements.txt`)

### Installer les dépendances :
```bash
pip install -r requirements.txt
```

## 3. Structure du projet
```
lab2/
│
├── resources/
│   ├── variables.robot
│   └── keywords.robot
│
├── tests/
│   ├── customer_service.robot
│
└── requirements.txt
```

## 4. Variables importantes
Dans `resources/variables.robot` :
```robot
${BASE_URL}      https://automationplayground.com/crm/index.html
${VALID_EMAIL}   qa.test@example.com
${VALID_PASS}    Password123
${INVALID_PASS}  wrongpass
${EMPTY}
${BROWSER}       chrome
```

## 5. Lancer les tests

### Tous les tests :
```bash
cd lab2/tests
robot customer_service.robot
```

### Scénario passant uniquement :
```bash
robot --test "Connexion valide et accès Customer Service" customer_service.robot
```

### Tests négatifs (messages d’erreurs attendus) :
```bash
robot --include NEGATIVE customer_service_negative.robot
```

## 6. Résultats
Après exécution, Robot Framework génère :
- `log.html` → journal détaillé des étapes
- `report.html` → résumé des tests (pass/fail)

Ces fichiers se trouvent dans le dossier `tests/`.

## 7. Bonnes pratiques appliquées
- Séparation des **variables**, **keywords** et **tests** pour meilleure maintenance.
- Tests écrits en **Arrange – Act – Assert** (préparation → action → vérification).
- Scénarios négatifs considérés **PASS** si l’erreur attendue est affichée (robustesse).
