This snippetfilter is an example of how to get forward auth to work with an httproute.

Add the following to an httproute filter section:
filters: - type: ExtensionRef
extensionRef:
group: gateway.nginx.org
kind: SnippetsFilter
name: forward-auth-snippets
