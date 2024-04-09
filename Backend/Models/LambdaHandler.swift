import AWSLambdaEvents
import AWSLambdaRuntime
import NIO

struct LambdaHandler: EventLoopLambdaHandler {
    typealias In = AWSLambdaEvents.APIGateway.ProxyRequest
    typealias Out = AWSLambdaEvents.APIGateway.ProxyResponse

    func handle(context: Lambda.Context, event: In) -> EventLoopFuture<Out> {
        // Create a response with a "Hello, World!" body.
        let response = AWSLambdaEvents.APIGateway.ProxyResponse(statusCode: .ok, headers: ["Content-Type": "text/plain"], multiValueHeaders: nil, body: "Hello, World!", isBase64Encoded: false)

        // Return the response wrapped in a future.
        return context.eventLoop.makeSucceededFuture(response)
    }
}
