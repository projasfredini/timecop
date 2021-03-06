// Copyright 2020 Kenton Hamaluik
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:timecop/data_providers/settings_provider.dart';

class MockSettingsProvider extends SettingsProvider {
  Map<String, dynamic> values;

  MockSettingsProvider() {
    values = Map<String, dynamic>();
  }

  @override
  bool getBool(String key) => values.containsKey(key) ? values[key] as bool : true;
  void setBool(String key, bool value) => values[key] = value;
  int getInt(String key) => values.containsKey(key) ? values[key] as int : -1;
  void setInt(String key, int value) => values[key] = value;
}