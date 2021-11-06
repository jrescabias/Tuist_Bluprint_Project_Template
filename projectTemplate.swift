import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")
let organizationIDAttribute: Template.Attribute = .optional("organizationID", default: "com.jem")
let platformAttribute: Template.Attribute = .optional("platform", default: "ios")
let localizableURL: Template.Attribute = .required("localizableURL")


// 1
let projectPath = "."
let appPath = "Sources/"
let resourcesPath = "Resources/"

var items: [Template.Item] = [
    //Project Template
    .file(path: projectPath + "/Project.swift", templatePath: "Project.stencil"),

    // Pluggable AppDelegate
    .file(path: appPath + "AppDelegate/AppDelegate.swift", templatePath: "AppDelegate/AppDelegate.stencil"),
    .file(path: appPath + "AppDelegate/PluggableAplicationDelegate.swift", templatePath: "AppDelegate/PluggableAplicationDelegate.stencil"),
    .file(path: appPath + "AppDelegate/SceneDelegate.swift", templatePath: "AppDelegate/SceneDelegate.stencil"),
    .file(path: appPath + "AppDelegate/Services/DummyService.swift", templatePath: "AppDelegate/DummyService.stencil"),

    //DummyViewController
    .file(path: appPath + "ViewController.swift", templatePath: "ViewController.stencil"),

    //LaunchScreen
    .file(path: projectPath + "/LaunchScreen.storyboard", templatePath: "LaunchScreen.stencil"),

    //Assets.xcassets
    .file(path: resourcesPath + "Assets.xcassets/Content.json", templatePath: "Resources/Assets/Contents.stencil"),
    .file(path: resourcesPath + "Assets.xcassets/AccentColor.colorset/Content.json", templatePath: "Resources/Assets/ContentsColors.stencil"),
    .file(path: resourcesPath + "Assets.xcassets/AppIcon-Beta.appiconset/Content.json", templatePath: "Resources/Assets/AppIconContents.stencil"),
    .file(path: resourcesPath + "Assets.xcassets/AppIcon-Dev.appiconset/Content.json", templatePath: "Resources/Assets/AppIconContents.stencil"),
    .file(path: resourcesPath + "Assets.xcassets/AppIcon.appiconset/Content.json", templatePath: "Resources/Assets/AppIconContents.stencil"),

    //Internationalization
    .file(path: resourcesPath + "Internationalization/en.lproj/Localizable.strings", templatePath: "Resources/Localizable.stencil"),
    .file(path: resourcesPath + "Internationalization/es.lproj/Localizable.strings", templatePath: "Resources/Localizable.stencil"),
    .directory(path: resourcesPath + "Internationalization", sourcePath: "Resources/LocalizableGen/generateLocalizables"),
    
    //Environments Configurations
    .file(path: appPath + "Configuration/Environments/development.xcconfig", templatePath: "Configuration/development.stencil"),
    .file(path: appPath + "Configuration/Environments/beta.xcconfig", templatePath: "Configuration/beta.stencil"),
    .file(path: appPath + "Configuration/Environments/production.xcconfig", templatePath: "Configuration/production.stencil"),
    .file(path: appPath + "Configuration/Properties/Info.plist", templatePath: "Configuration/Info.stencil"),
    .file(path: appPath + "Configuration/Properties/Environment.swift", templatePath: "Configuration/Environment.stencil")
]

let template = Template(
    description: "Custom template",
    attributes: [
        nameAttribute,
        platformAttribute
    ],
    items: items
)


