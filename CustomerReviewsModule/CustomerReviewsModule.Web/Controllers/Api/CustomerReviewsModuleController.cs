using System.Web.Http;
using CustomerReviewsModule.Core;
using VirtoCommerce.Platform.Core.Web.Security;

namespace CustomerReviewsModule.Web.Controllers.Api
{
    [RoutePrefix("api/CustomerReviewsModule")]
    public class CustomerReviewsModuleController : ApiController
    {
        // GET: api/CustomerReviewsModule
        [HttpGet]
        [Route("")]
        [CheckPermission(Permission = ModuleConstants.Security.Permissions.Read)]
        public IHttpActionResult Get()
        {
            return Ok(new { result = "Hello world!" });
        }
    }
}
