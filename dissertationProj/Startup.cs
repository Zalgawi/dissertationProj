using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(dissertationProj.Startup))]
namespace dissertationProj
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
