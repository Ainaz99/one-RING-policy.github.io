# skiff-template-html

An HTML only template for [Skiff](https://github.com/allenai/skiff). This template includes:

* A HTML only template with AI2 branded styles provided by [Shellac](https://varnish.allenai.org/shellac).
* [NGINX](https://nginx.org) as a static webserver to serve your site from disk.

To start a new project from this template click [here](https://github.com/allenai/skiff-template-html/generate).

## Local Development

Since the template is HTML only, you can simply edit the files on disk and preview them in
the browser of your choosing:

```bash
vim public/index.html
open public/index.html
```

It's so simple, it's practically magic ✨.

If you'd like to simulate how things work in a deployed environment, run the following command,
replacing `$appName` with the name of your application:

```bash
export appName="my-app-name"
docker build -t $appName:latest . && \
    docker run --rm -it -p 8080:80 -v $(pwd)/public:/usr/share/nginx/html $appName:latest
```

Then just visit [http://localhost:8080](http://localhost:8080) in the browser of your choosing.
You can edit the source code and refresh your browser to see the latest changes.

## Onboarding to Skiff

To get your application deployed to Skiff:

1. Edit `skiff.json` and add the appropriate values:
    - `appName` should be a unique, url-safe name for your application. The URL of your
       application will be `{appName}.apps.allenai.org`.
    - `contact` is an `@allenai.org` email address affiliated email without the `@allenai.org`
      bit.
    - `team` is the team that should be billed for the application's resources.
2. After committing and pushing these changes make sure to submit a
   [request to be onboarded](https://github.com/allenai/skiff/issues/new/choose).
3. Wait. We'll send you a note when your application is ready.

Once things are set up, merging to `master` will update the deployed version. You can visit the
[Skiff Marina](https://marina.apps.allenai.org) for more information about the deployed version
of your application.

## Getting Help

If you're stuck don't hesitate to reach out by:

* Sending an email to [reviz@allenai.org](mailto:reviz@allenai.org)
* Joining the `#skiff-users` slack channel
* Opening a [Github Issue](https://github.com/allenai/skiff/issues/new/choose)

Smooth sailing ⛵️!
