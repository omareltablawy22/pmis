import 'base_env_config.dart';

class GlobalEnvConfig extends BaseEnvConfig {
  @override
  String get baseUrl => 'http://192.168.8.7:8000/api';
  @override
  String get testURL => 'http://188.54.124.96:9000/api';
  @override
  String get bearer =>
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC44Ljc6ODAwMC9hcGkvYXV0aC9sb2dpbiIsImlhdCI6MTY5ODkxNzg4NCwiZXhwIjoxNjk4OTIxNDg0LCJuYmYiOjE2OTg5MTc4ODQsImp0aSI6ImdDMUpNaHBZNVhQeFhqdFMiLCJzdWIiOiIxIiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.W0PwMsliYzmfRsD_O1i0VsOdkQTSnnIkNs3BCt8Z1VE';
  @override
  String get accessToken1 => '';
}
