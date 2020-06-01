using VirtoCommerce.TrainingModule.Core;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;


namespace VirtoCommerce.TrainingModule.Web.Controllers.Api
{
    [Route("api/TrainingModule")]
    public class TrainingModuleController : Controller
    {
        // GET: api/VirtoCommerce.TrainingModule
        /// <summary>
        /// Get message
        /// </summary>
        /// <remarks>Return "Hello world!" message</remarks>
        [HttpGet]
        [Route("")]
        [Authorize(ModuleConstants.Security.Permissions.Read)]
        public ActionResult<string> Get()
        {
            return Ok(new { result = "Hello world!" });
        }
    }
}
