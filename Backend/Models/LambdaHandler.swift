// LambdaHandler.swift
import AWSLambdaEvents
import AWSLambdaRuntime

struct LambdaHandler: EventLoopLambdaHandler {
    typealias In = AWSLambdaEvents.APIGateway.ProxyRequest
    typealias Out = AWSLambdaEvents.APIGateway.ProxyResponse

    func handle(context: Lambda.Context, event: In) -> EventLoopFuture<Out> {
        // Handle Lambda event
    }
}
