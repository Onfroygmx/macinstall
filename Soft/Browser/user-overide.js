// user-veride.js
// Perso
// Browser behavior
user_pref("browser.bookmarks.max_backups", 2);                                  // Maximum number of bookmark backups to keep (default is 15)
// Disable "Pocket" (third party "save for later" service) & remove urls for good measure https://www.gnu.gl/blog/Posts/multiple-vulnerabilities-in-pocket/
user_pref("extensions.pocket.api", "");
user_pref("extensions.pocket.enabled", false);
user_pref("extensions.pocket.oAuthConsumerKey", "");
user_pref("extensions.pocket.site", "");

/* LOCATION BAR / SEARCH / AUTO SUGGESTIONS / HISTORY / FORMS etc ***/
user_pref("browser.formfill.expire_days", 0);
user_pref("browser.sessionhistory.max_entries", 5);                             // [integer] tab specific max number of pages that can be traversed when moving forward/backward in history - affects total memory consumption
/* 0850a: */
user_pref("browser.urlbar.suggest.bookmark", true);
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.suggest.topsites", false);
user_pref("browser.urlbar.maxRichResults", 5);

// Disable fx accounts everywhere
user_pref("identity.fxaccounts.enabled", false);

user_pref("reader.parse-on-load.enabled", false);

// Search Options
user_pref("browser.search.hiddenOneOffs", "Google,Amazon.com,Bing,DuckDuckGo,Wikipedia (en)");
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.search.update", false);
user_pref("browser.search.widget.inNavBar", true);
user_pref("browser.search.region "US");
user_pref("doh-rollout.home-region, "US");

// Don't swith to new opened tabs
user_pref("browser.tabs.loadBookmarksInBackground", true);
user_pref("browser.tabs.loadBookmarksInTabs", true);
user_pref("browser.tabs.loadDivertedInBackground", true);

// Don't close window with last tab
user_pref("browser.tabs.closeWindowWithLastTab", false);


// Ebale new tabcontainers in context menu: very anoying
// user_pref("privacy.userContext.newTabContainerOnLeftClick.enabled", true);

// ** Theme Related Options ****************************************************
// userchrome.css usercontent.css activate
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
// Fill SVG Color
user_pref("svg.context-properties.content.enabled", true);
// CSS Blur Filter - 88 Above
user_pref("layout.css.backdrop-filter.enabled", true);
// Restore Compact Mode - 89 Above
user_pref("browser.compactmode.show", true);

// Custom No Country Redirect Google Search
// https://www.google.com/search?q=%s&pws=0&gl=us&gws_rd=cr
