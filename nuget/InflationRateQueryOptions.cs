using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.InflationRate
{
    /// <summary>
    /// Query options for the Inflation Rate API
    /// </summary>
    public class InflationRateQueryOptions
    {
        /// <summary>
        /// ISO 2-letter country code (e.g., US, GB, JP, DE, BR)
        /// </summary>
        [JsonProperty("country")]
        public string Country { get; set; }

        /// <summary>
        /// The year to retrieve data for. Defaults to the previous year.
        /// </summary>
        [JsonProperty("year")]
        public string Year { get; set; }
    }
}
