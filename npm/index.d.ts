declare module '@apiverve/inflation' {
  export interface inflationOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface inflationResponse {
    status: string;
    error: string | null;
    data: InflationRateData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface InflationRateData {
      country:       null | string;
      countryName:   null | string;
      year:          number | null;
      inflationRate: number | null;
      cpiIndex:      number | null;
      cpiBaseYear:   number | null;
      lastUpdated:   Date | null;
  }

  export default class inflationWrapper {
    constructor(options: inflationOptions);

    execute(callback: (error: any, data: inflationResponse | null) => void): Promise<inflationResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: inflationResponse | null) => void): Promise<inflationResponse>;
    execute(query?: Record<string, any>): Promise<inflationResponse>;
  }
}
