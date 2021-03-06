<cfoutput>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="##navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="nav navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#buildURL('admin.me')#">Me</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#buildURL('admin.user')#">Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#buildURL('admin.experience')#">Experiences</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#buildURL('admin.skill')#">Skills</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#buildURL('admin.reference')#">References</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#buildURL('admin.message')#">Messages</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#buildURL('main.default')#">Main Site</a>
                </li>
            </ul>
        </div>
    </nav>
</cfoutput>
