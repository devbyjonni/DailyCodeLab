import Foundation

let projectName = "SwiftPlayground"
let homeDir = FileManager.default.homeDirectoryForCurrentUser
let projectPath = homeDir.appendingPathComponent("Developer").appendingPathComponent(projectName)

do {
    let developerPath = homeDir.appendingPathComponent("Developer")
    if !FileManager.default.fileExists(atPath: developerPath.path) {
        try FileManager.default.createDirectory(at: developerPath, withIntermediateDirectories: true, attributes: nil)
    }

    try FileManager.default.createDirectory(at: projectPath, withIntermediateDirectories: true, attributes: nil)
    print("✅ Created Swift project directory: \(projectPath.path)")
} catch {
    print("❌ Error creating project directory: \(error)")
    exit(1)
}

let process = Process()
process.launchPath = "/usr/bin/env"
process.arguments = ["swift", "package", "init", "--type", "executable"]
process.currentDirectoryPath = projectPath.path

do {
    try process.run()
    process.waitUntilExit()
    print("✅ Initialized Swift package")
} catch {
    print("❌ Error initializing Swift package: \(error)")
    exit(1)
}

