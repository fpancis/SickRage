<%!
    import os.path
    import urllib
    import sickbeard
%>
<%include file="/inc_top.mako"/>
% if not header is UNDEFINED:
    <h1 class="header">${header}</h1>
% else:
    <h1 class="title">${title}</h1>
% endif

<div id="addShowPortal">
    <a href="${sbRoot}/home/addShows/newShow/" id="btnNewShow" class="btn btn-large">
        <div class="button"><div class="icon-addnewshow"></div></div>
        <div class="buttontext">
            <h3>Add New Show</h3>
            <p>For shows that you haven't downloaded yet, this option finds a show on theTVDB.com and TVRage.com, creates a directory for its episodes, and adds it to SickRage.</p>
        </div>
    </a>

    <br/><br/>
    % if sickbeard.USE_TRAKT == True:
    <a href="${sbRoot}/home/addShows/trendingShows/" id="btnNewShow" class="btn btn-large">
        <div class="button"><div class="icon-addtrendingshow"></div></div>
        <div class="buttontext">
            <h3>Add Trending Show</h3>
            <p>For shows that you haven't downloaded yet, this option lets you choose from a list of current trending shows with ratings to add, creates a directory for its episodes, and adds it to SickRage.</p>
        </div>
    </a>

    <br/><br/>

    <a href="${sbRoot}/home/addShows/recommendedShows/" id="btnNewShow" class="btn btn-large">
        <div class="button"><div class="icon-addrecommendedshow"></div></div>
        <div class="buttontext">
            <h3>Add Recommended Shows</h3>
            <p>For shows that you haven't downloaded yet, this option recommends shows to add based on your Trakt.tv show library, creates a directory for its episodes, and adds it to SickRage.</p>
        </div>
    </a>

    <br/><br/>
    % endif


    % if sickbeard.USE_IMDB_POPULAR == True:
    <a href="${sbRoot}/home/addShows/popularShows/" id="btnNewShow" class="btn btn-large">
        <div class="button"><div class="icon-addtrendingshow"></div></div>
        <div class="buttontext">
            <h3>View Popular Shows</h3>
            <p>View IMDB's list of the most popular shows. This feature uses IMDB's MOVIEMeter algorithm to identify popular TV Series.</p>
        </div>
    </a>

    <br/><br/>
    % endif


    <a href="${sbRoot}/home/addShows/existingShows/" id="btnExistingShow" class="btn btn-large">
        <div class="button"><div class="icon-addexistingshow"></div></div>
        <div class="buttontext">
            <h3>Add Existing Shows</h3>
            <p>Use this option to add shows that already have a folder created on your hard drive. SickRage will scan your existing metadata/episodes and add the show accordingly.</p>
        </div>
    </a>

</div>


<%include file="/inc_bottom.mako"/>
