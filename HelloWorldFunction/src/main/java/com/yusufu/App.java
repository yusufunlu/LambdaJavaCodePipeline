package com.yusufu;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

/**
 * Handler for requests to Lambda function.
 */
public class App implements RequestHandler<String, String> {

    public String handleRequest(final String input, final Context context) {
        return "hello world 1";
    }
}
