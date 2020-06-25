# My Setup :computer:

## Coding Stuff ( Requirements )

### Visual Studio Code <\\>

#### Themes

**Seti Black** ,  
**Night Owl** ,  
**Material Icon theme** ,  
**Just Black**  
**Shades of Purple**

#### ➕ Extensions

- **Bracket Pair Colorizer 2**
- **Gitlens**
- **ESLint**
- **Better Comments aaron-bond.better-comments**
- **Live Server** and **Live Sass Compiler** by Ritwick Dey
- **Language Support for Java(TM) by Red Hat**
- **Markdown Preview Enhanced**
- **Prettier Code Formatter esbenp.prettier-vscode**
- **Debugger for Chrome**
- **FontSize ShortCuts**
- **NPM intellisense**
- **Simple React Snippets (burkeholland.simple-react-snippets)**
- **Prettier**
- **Quokka.js**  
- **LiveShare**
- **Vue snippets sdras.vue-vscode-snippets**   
- **Vetur octref.vetur**

There might be some more extensions check out this [gist](https://gist.github.com/47b6902a8cb1cdebe1164378448bb784) for that. 

#### :pencil2: Font

I use the font `Anonymous Pro` , `Dank Mono` , `Operator Mono`

The font files are in this repo itself

## :pancakes: MongoDB

## 💠 Node.js

Get it here:- https://nodejs.org/en/

npm_global modules access - https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally

**live-server** - `npm i live-server -g`  
**lite-server** - `npm i lite-server -g`  
**create-react-app** - `npm i create-react-app -g` or `npx create-react-app` to spin a react up quickly.

> Note:- Use --use-npm flag with cra if you explicitly want to use npm with cra even if yarn is installed.

**Vue CLI** - `npm install -g @vue/cli`  
**reveal-md** - `npm i -g reveal-md` For presenting with markdown.  
**yarn** - `npm i -g yarn` or `curl -o- -L https://yarnpkg.com/install.sh | bash`  
**now** - Deploying with ZEIT NOW v2 `npm i -g now`

DO `now login`

- **tldr** - `npm i -g tldr` and then `tldr update` i guess to update the list -- similar thing to man pages

### **IMPORTANT** **WINDOWS**

https://github.com/yarnpkg/yarn/issues/990  
 SPEED UP NODE | DISABLE AntiVirus ON DEV FOLDER AND NODE AND NPM AND YARN

## Heroku

Get it (CLI ) here:- https://devcenter.heroku.com/articles/heroku-cli
`_netrc` file is for heroku

Do `heroku login`

## :zap: Terminal

Windows Terminal :- https://github.com/microsoft/terminal/releases
I use Git Bash as the shell. (on windows )
Git bash comes installed with Git

Get it from the Github repo or the Microsoft Store.

- **Font** - `Anonymous Pro`, `Dank Mono` , `Operator Mono`.
- **Terminal** - Git Bash

## :earth_americas: Chrome

- **Theme** - **Just Black** from the Chrome webstore

#### Extensions for Chrome

- Adblock Plus
- Stylus
- JSON Formatter
- DashLane
- React DevTools
- Tabliss
- Vue DevTools

## :coffee: **JDK** Java Development Kit

Download the latest one but I am using **JDK 11**  
Set the **Path** variable for Java, Visual Studio Code, etc

## 🎁 Other Stuff and programs (Productivity, Wireframing, Chatting etc. )

- **Discord** Get it:- https://discordapp.com/download
- **UELI** app launcher Get it:- https://ueli.app/#/
- **Sumatra PDF** for pdfs Get it:- https://www.sumatrapdfreader.org/download-free-pdf-viewer.html
                 ***OR*** 
- **Lector** for pdfs ; Get it:- https://sagargurtu.github.io/lector/
- **7 Zip** File Compresser Get it here:- https://www.7-zip.org/
- **Everything** Both installer and command line interface (Required by UELI). Get it:- https://www.voidtools.com/downloads/
- **OBS Studio** Record Screen, Stream etc. Get it here:- https://obsproject.com/
- **Python** Just in case Get it:- https://www.python.org/
- **Figma** Wireframing and prototyping. Use in the browser https://www.figma.com/ or download the Desktop Client: https://www.figma.com/downloads/
- **Firefox Developer Edition** I do not use it much but... hey?   
- **ROBO 3T** For mongo dbs


## Settings.json

```json
{
  "workbench.startupEditor": "none",
  "update.enableWindowsBackgroundUpdates": false,
  "editor.formatOnPaste": true,
  "terminal.integrated.shell.windows": "C:\\Program Files\\Git\\bin\\bash.exe",
  "editor.tabSize": 2,
  "workbench.settings.openDefaultKeybindings": true,
  "editor.fontFamily": "Operator Mono",
  "editor.lineHeight": 0,
  "explorer.decorations.badges": false,
  "workbench.colorCustomizations": {
    "sideBar.border": "#b6b6b672",
    "activityBar.border": "#b6b6b672",
    "sideBar.foreground": "#fff",
    "gitDecoration.ignoredResourceForeground": "#7e7e7e",
    "tab.activeBorder": "#b27aff"
  },
  "editor.suggestSelection": "first",
  "java.configuration.checkProjectSettingsExclusions": false,
  "editor.minimap.enabled": false,
  "java.errors.incompleteClasspath.severity": "ignore",
  "[jsonc]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.formatOnSave": true
  },
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.formatOnSave": true
  },
  "[html]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.formatOnSave": true
  },
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[javascri  ptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[vue]": {
    "editor.defaultFormatter": "octref.vetur"
  },
  "[javascriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "window.autoDetectHighContrast": false,
  "extensions.ignoreRecommendations": true,
  "workbench.tree.indent": 10,
  "editor.suggest.maxVisibleSuggestions": 10,
  "debug.console.fontSize": 17,
  "editor.multiCursorModifier": "ctrlCmd",
  "editor.minimap.renderCharacters": false,
  "workbench.tree.renderIndentGuides": "always",
  "editor.formatOnSave": true,
  "terminal.integrated.cursorStyle": "line",
  "window.newWindowDimensions": "maximized",
  "editor.suggestFontSize": 18,
  "explorer.confirmDragAndDrop": false,
  "terminal.integrated.rendererType": "auto",
  "editor.find.addExtraSpaceOnTop": false,
  "markdown.preview.lineHeight": 1,
  "workbench.editor.enablePreview": false,
  "explorer.confirmDelete": false,
  "javascript.updateImportsOnFileMove.enabled": "always",
  "update.showReleaseNotes": false,
  "telemetry.enableTelemetry": false,
  "files.autoSaveDelay": 0,
  "explorer.incrementalNaming": "smart",
  "editor.fontLigatures": true,
  "terminal.integrated.fontSize": 18,
  "terminal.integrated.drawBoldTextInBrightColors": false,
  "editor.wordWrap": "on",
  "editor.wordWrapColumn": 100,
  "java.home": "C:\\Program Files\\Java\\jdk-11.0.5",
  "fontshortcuts.step": 0.1,
  "fontshortcuts.defaultTerminalFontSize": 20,
  "fontshortcuts.defaultFontSize": 20,
  "editor.renderLineHighlight": "gutter",
  "editor.fontSize": 20,
  "files.autoSave": "onFocusChange",
  "workbench.iconTheme": "material-icon-theme",
  "editor.renderWhitespace": "none",
  "liveshare.presence": true,
  "java.semanticHighlighting.enabled": true,
  "workbench.activityBar.visible": true,
  "terminal.integrated.fontFamily": "Inconsolata-g for Powerline",
  "java.refactor.renameFromFileExplorer": "autoApply",
  "window.zoomLevel": -0.6,
  "editor.fontWeight": "400",
  "liveServer.settings.donotShowInfoMsg": true,
  "liveServer.settings.port": 4242,
  "workbench.colorTheme": "Just Black",
  "editor.cursorBlinking": "smooth",
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": ["comment", "comment.block"],
        "settings": {
          "fontStyle": "italic",
          "foreground": "#ffa1d3b1"
        }
      },
      {
        "scope": [
          "keyword.operator.logical",
          "keyword.operator.arithmetic",
          "keyword.operator.assignment",
          "keyword.operator.bitwise"
        ],
        "settings": {
          "fontStyle": ""
        }
      }
    ]
  }
}

```
