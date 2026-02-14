declare module '@apiverve/inflation' {
  export interface inflationOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface inflationResponse {
    status: string;
    error: string | null;
    data: InflationRateData;
    code?: number;
  }


  interface InflationRateData {
      country:       string;
      countryName:   string;
      year:          number;
      inflationRate: number;
      cpiIndex:      number;
      cpiBaseYear:   number;
      lastUpdated:   Date;
  }

  export default class inflationWrapper {
    constructor(options: inflationOptions);

    execute(callback: (error: any, data: inflationResponse | null) => void): Promise<inflationResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: inflationResponse | null) => void): Promise<inflationResponse>;
    execute(query?: Record<string, any>): Promise<inflationResponse>;
  }
}
