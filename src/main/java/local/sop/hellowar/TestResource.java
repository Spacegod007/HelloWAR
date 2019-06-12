package local.sop.hellowar;

import javax.ejb.Stateless;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

@Stateless
@Path("/test")
public class TestResource {
    @GET
    public Response test(){
        return Response.ok("Test response was OK").build();
    }
}
