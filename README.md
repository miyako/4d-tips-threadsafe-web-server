![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)

# 4d-tips-threadsafe-web-server
replica of 4D v16 demo database

original blog post: https://blog.4d.com/web-server-in-preemptive-mode/

## modifications

* support interpreted mode (processing code is moved to compiled component)
* [english](https://github.com/miyako/4d-tips-threadsafe-web-server/tree/english) branch for delocalised version

<img src="https://github.com/user-attachments/assets/8ae81295-db5d-43b5-b253-94439dae67e7" width=600 height=auto />
 
the original HDI was using an undocumented feature, where "use preëmptive web process" in user settings would override that of structure settings.  

```xml
<?xml version="1.0" encoding="UTF-8" standalone="no" ?>
<preferences stamp="4">
	<com.4d>
		  <web>
			  <standalone_server>
				<configuration session_mode="2"/>
				<options>
				      <web_processes preemptive="true"/>
				</options>
			</standalone_server>
		</web>
	</com.4d>
</preferences>
```
in the current version, the strategy does not work.
