import { AzureFunction, Context, HttpRequest } from "@azure/functions"

const httpTrigger: AzureFunction = async function (context: Context, req: HttpRequest): Promise<void> {
  context.log('HTTP trigger function processed a request.');
  const responseMessage = { message: "Welcome to Hack Azure!" }

  const headers = {
    'content-type': 'application/json',
  }

  context.res = {
    // status: 200, /* Defaults to 200 */
    headers,
    body: responseMessage
  };

};

export default httpTrigger;