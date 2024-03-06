#!/bin/bash

#echo -n "eyJub3RpZmljYXRpb24iOlt7ImV2ZW50VmVyc2lvbiI6IjIuMCIsImV2ZW50U291cmNlIjoibWluaW86czMiLCJhd3NSZWdpb24iOiIiLCJldmVudFRpbWUiOiIyMDI0LTAzLTA1VDA1OjE4OjA0Ljk2M1oiLCJldmVudE5hbWUiOiJzMzpPYmplY3RDcmVhdGVkOlB1dCIsInVzZXJJZGVudGl0eSI6eyJwcmluY2lwYWxJZCI6InJvb3QifSwicmVxdWVzdFBhcmFtZXRlcnMiOnsicHJpbmNpcGFsSWQiOiJyb290IiwicmVnaW9uIjoiIiwic291cmNlSVBBZGRyZXNzIjoiMTkyLjE2OC4zOS4xIn0sInJlc3BvbnNlRWxlbWVudHMiOnsieC1hbXotaWQtMiI6ImJhMTY1YWQwYzU5NDU5ZmQ4M2ViYzc3MjhhNDc5M2FkY2IwYzQ1MWY2ZGFhODExYjRlYWYwZTNlOTRlY2ZiN2MiLCJ4LWFtei1yZXF1ZXN0LWlkIjoiMTdCOUM2OTZFNENEOTNCQSIsIngtbWluaW8tZGVwbG95bWVudC1pZCI6ImY4MTY1ZjY1LTMwY2ItNDhjMy1hMmY1LTU5OWIyMjBmMGVlZSIsIngtbWluaW8tb3JpZ2luLWVuZHBvaW50IjoiaHR0cDovLzEwLjI0NC4wLjE0MDo5MDAwIn0sInMzIjp7InMzU2NoZW1hVmVyc2lvbiI6IjEuMCIsImNvbmZpZ3VyYXRpb25JZCI6IkNvbmZpZyIsImJ1Y2tldCI6eyJuYW1lIjoiYWNtZSIsIm93bmVySWRlbnRpdHkiOnsicHJpbmNpcGFsSWQiOiJyb290In0sImFybiI6ImFybjphd3M6czM6OjphY21lIn0sIm9iamVjdCI6eyJrZXkiOiJ2aWV3Mi5wbmciLCJzaXplIjo5MDY2OSwiZVRhZyI6ImU4YjdjMTlhNGJkMDMwYzA0ZWI3ZTc4NjdlZDRiYWQ1IiwiY29udGVudFR5cGUiOiJpbWFnZS9wbmciLCJ1c2VyTWV0YWRhdGEiOnsiY29udGVudC10eXBlIjoiaW1hZ2UvcG5nIn0sInNlcXVlbmNlciI6IjE3QjlDNjk2RTRGM0FDNDgifX0sInNvdXJjZSI6eyJob3N0IjoiMTkyLjE2OC4zOS4xIiwicG9ydCI6IiIsInVzZXJBZ2VudCI6Ik1pbklPIChsaW51eDsgYW1kNjQpIG1pbmlvLWdvL3Y3LjAuNjQgTWluSU8gQ29uc29sZS8oZGV2KSJ9fV19" | base64 -d - | jq

echo -n "eyJub3RpZmljYXRpb24iOlt7ImV2ZW50VmVyc2lvbiI6IjIuMCIsImV2ZW50U291cmNlIjoibWluaW86czMiLCJhd3NSZWdpb24iOiIiLCJldmVudFRpbWUiOiIyMDI0LTAzLTA1VDA3OjM5OjM3LjA1NloiLCJldmVudE5hbWUiOiJzMzpPYmplY3RDcmVhdGVkOlB1dCIsInVzZXJJZGVudGl0eSI6eyJwcmluY2lwYWxJZCI6InJvb3QifSwicmVxdWVzdFBhcmFtZXRlcnMiOnsicHJpbmNpcGFsSWQiOiJyb290IiwicmVnaW9uIjoiIiwic291cmNlSVBBZGRyZXNzIjoiMTkyLjE2OC4zOS4xIn0sInJlc3BvbnNlRWxlbWVudHMiOnsieC1hbXotaWQtMiI6ImJhMTY1YWQwYzU5NDU5ZmQ4M2ViYzc3MjhhNDc5M2FkY2IwYzQ1MWY2ZGFhODExYjRlYWYwZTNlOTRlY2ZiN2MiLCJ4LWFtei1yZXF1ZXN0LWlkIjoiMTdCOUNFNTAxQjZCMUE2NiIsIngtbWluaW8tZGVwbG95bWVudC1pZCI6ImY4MTY1ZjY1LTMwY2ItNDhjMy1hMmY1LTU5OWIyMjBmMGVlZSIsIngtbWluaW8tb3JpZ2luLWVuZHBvaW50IjoiaHR0cDovLzEwLjI0NC4wLjE0MDo5MDAwIn0sInMzIjp7InMzU2NoZW1hVmVyc2lvbiI6IjEuMCIsImNvbmZpZ3VyYXRpb25JZCI6IkNvbmZpZyIsImJ1Y2tldCI6eyJuYW1lIjoiYWNtZSIsIm93bmVySWRlbnRpdHkiOnsicHJpbmNpcGFsSWQiOiJyb290In0sImFybiI6ImFybjphd3M6czM6OjphY21lIn0sIm9iamVjdCI6eyJrZXkiOiJpbWFnZS93ZXJld29sZi5wbmciLCJzaXplIjo0NzYyOSwiZVRhZyI6IjFhNzg1ZDE4ZjNlNDJmODIyZTEzZDZiZDMxMjBiODVmIiwiY29udGVudFR5cGUiOiJpbWFnZS9wbmciLCJ1c2VyTWV0YWRhdGEiOnsiY29udGVudC10eXBlIjoiaW1hZ2UvcG5nIn0sInNlcXVlbmNlciI6IjE3QjlDRTUwMUQ1Rjg3QjEifX0sInNvdXJjZSI6eyJob3N0IjoiMTkyLjE2OC4zOS4xIiwicG9ydCI6IiIsInVzZXJBZ2VudCI6Ik1pbklPIChsaW51eDsgYW1kNjQpIG1pbmlvLWdvL3Y3LjAuNjQgTWluSU8gQ29uc29sZS8oZGV2KSJ9fV19" | base64 -d - | jq