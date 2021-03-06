/*
 * PEPS is a modern collaboration server
 * Copyright (C) 2015 MLstate
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


package com.mlstate.webmail.model

module AppCache {

  function duration_cache(duration, f) {
    negociator = Cache.Negotiator.always_necessary(f);
    Cache.make(negociator, {Cache.default_options with age_limit : some(duration)})
  }

  function sized_cache(size, f) {
    negociator = Cache.Negotiator.always_necessary(f);
    Cache.make(negociator, {Cache.default_options with size_limit : some(size)})
  }

}
