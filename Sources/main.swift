import HTTPServer
import HTTPFile
import LogMiddleware

let log = Log()
let logger = LogMiddleware(log: log)

try Server(middleware: logger,responder: FileResponder(basePath: "public")).start()