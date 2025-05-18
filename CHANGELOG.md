# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
## [2.1.1] - 2025-05-18
### Fixed
* fixed empty time entry author | [@radek.cerveny](https://git.easy.cz/radek.cerveny)

## [2.1.0] - 2024-12-07
### Changed
* remove version locks of dependencies (will be managed by main app) | [@lukas](https://git.easy.cz/lukas)

## [2.0.0] - 2024-07-12
### Added
* add graphql helper into spec_helper for all ryses. | [@martin.krupa](https://git.easy.cz/martin.krupa)

## [1.0.2] - 2023-11-19
### Added
* update dependencies | [@pavel](https://git.easy.cz/pavel)

## [1.0.1] - 2023-11-16
### Added
* allowed failures | [@pavel](https://git.easy.cz/pavel)

## [1.0.0] - 2023-10-06
### Changed
* drop Redmine support
* compatible only with EP/ER v13+

## [0.5.6] - 2023-06-27
### Fixed
- pass chrome_options as options

## [0.5.5] - 2022-08-26
### Fixed
* rspec_junit_formatter is back | [@pavel](https://git.easy.cz/pavel)

### Added
* update webmock | [@pavel](https://git.easy.cz/pavel)

## [0.5.4] - 2022-08-26
### Fixed
* clean all. | [#555618](https://es.easyproject.com/issues/555618) | [@pavel](https://git.easy.cz/pavel)

## [0.5.3] - 2022-02-18
### Added
* rspec_junit_formatter. | [@lukas](https://git.easy.cz/lukas)

## [0.5.2] - 2021-12-04
### Removed
* rspec-retry configuration. | [#526082](https://es.easyproject.com/issues/526082) | [@lukas](https://git.easy.cz/lukas)

## [0.5.1] - 2021-11-10
### Fixed
- pass chrome_options as capabilities
- Add retry to capybara specs

## [0.5.0] - 2021-09-09
### Added
- shoulda-matchers support

## [0.4.2] - 2021-08-25
### Fixed
- to_s

## [0.4.1] - 2021-08-25
### Fixed
- correct name argument in requires factories
- load file instead of require
### Changed
- add ".rb" extensions automatically if needs (require factories)

## [0.4.0] - 2021-07-09
### Added
- Shortcut for require factories from redmine plugins

## [0.2.18] - 2020-07-07
### Fixed
- init support and factories files in systemic rysy

## [0.2.15] - 2020-03-11
### Added
- changelog
- project_custom_field factory
