interface Props687 { value: number; label: string; onChange: (v: number) => void; }
export const Component687 = ({ value, label, onChange }: Props687) => (
  <div className="component-687">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
