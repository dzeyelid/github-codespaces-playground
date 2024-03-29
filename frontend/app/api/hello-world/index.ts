import { AzureFunction, Context, HttpRequest } from "@azure/functions"
import axios from "axios";

interface BackendResponse {
  message: string;
}

const httpTrigger: AzureFunction = async function (context: Context, req: HttpRequest): Promise<void> {
  context.log('HTTP trigger function processed a request.');
  const url = `${process.env.BACKEND_HOST_URL}/api/hello-world`;
  const response = await axios.get<BackendResponse>(url);
  const responseMessage = { message: response.data.message }

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