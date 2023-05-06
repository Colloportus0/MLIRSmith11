module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [2 , 1 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_0(dense<[[[[5, 6]]], [[[6, 4]]]]> : tensor<2x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64) -> !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %5 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<1 x array<1 x array<2 x i32>>>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.insertvalue %6, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %6, %8[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.insertvalue %10, %9[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(2 : index) : i64
    %13 = llvm.insertvalue %12, %11[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.insertvalue %14, %13[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.insertvalue %16, %15[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = llvm.insertvalue %18, %17[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.insertvalue %20, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.insertvalue %22, %21[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(2 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(2 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.mlir.constant(2 : index) : i64
    %35 = llvm.mlir.constant(4 : index) : i64
    %36 = llvm.mlir.null : !llvm.ptr<i32>
    %37 = llvm.getelementptr %36[%35] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %38 = llvm.ptrtoint %37 : !llvm.ptr<i32> to i64
    %39 = llvm.mlir.constant(16 : index) : i64
    %40 = llvm.add %38, %39  : i64
    %41 = llvm.call @malloc(%40) : (i64) -> !llvm.ptr<i8>
    %42 = llvm.bitcast %41 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<i32> to i64
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.sub %39, %44  : i64
    %46 = llvm.add %43, %45  : i64
    %47 = llvm.urem %46, %39  : i64
    %48 = llvm.sub %46, %47  : i64
    %49 = llvm.inttoptr %48 : i64 to !llvm.ptr<i32>
    %50 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %51 = llvm.insertvalue %42, %50[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %49, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %28, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %29, %55[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %30, %56[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %31, %57[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %34, %58[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %33, %59[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %31, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %32, %61[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.mlir.constant(2 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%63 : i64)
  ^bb1(%66: i64):  // 2 preds: ^bb0, ^bb11
    %67 = llvm.icmp "slt" %66, %64 : i64
    llvm.cond_br %67, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%68 : i64)
  ^bb3(%71: i64):  // 2 preds: ^bb2, ^bb10
    %72 = llvm.icmp "slt" %71, %69 : i64
    llvm.cond_br %72, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%73 : i64)
  ^bb5(%76: i64):  // 2 preds: ^bb4, ^bb9
    %77 = llvm.icmp "slt" %76, %74 : i64
    llvm.cond_br %77, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%78 : i64)
  ^bb7(%81: i64):  // 2 preds: ^bb6, ^bb8
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %83 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %84 = llvm.load %83 : !llvm.ptr<i32>
    %85 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mul %66, %86  : i64
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mul %71, %88  : i64
    %90 = llvm.add %87, %89  : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mul %76, %91  : i64
    %93 = llvm.add %90, %92  : i64
    %94 = llvm.add %93, %81  : i64
    %95 = llvm.getelementptr %85[%94] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %96 = llvm.load %95 : !llvm.ptr<i32>
    %97 = llvm.icmp "sgt" %84, %96 : i32
    %98 = llvm.select %97, %84, %96 : i1, i32
    %99 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mul %66, %100  : i64
    %102 = llvm.mlir.constant(2 : index) : i64
    %103 = llvm.mul %71, %102  : i64
    %104 = llvm.add %101, %103  : i64
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.mul %76, %105  : i64
    %107 = llvm.add %104, %106  : i64
    %108 = llvm.add %107, %81  : i64
    %109 = llvm.getelementptr %99[%108] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %98, %109 : !llvm.ptr<i32>
    %110 = llvm.add %81, %80  : i64
    llvm.br ^bb7(%110 : i64)
  ^bb9:  // pred: ^bb7
    %111 = llvm.add %76, %75  : i64
    llvm.br ^bb5(%111 : i64)
  ^bb10:  // pred: ^bb5
    %112 = llvm.add %71, %70  : i64
    llvm.br ^bb3(%112 : i64)
  ^bb11:  // pred: ^bb3
    %113 = llvm.add %66, %65  : i64
    llvm.br ^bb1(%113 : i64)
  ^bb12:  // pred: ^bb1
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mlir.constant(4 : index) : i64
    %122 = llvm.mlir.null : !llvm.ptr<i32>
    %123 = llvm.getelementptr %122[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %124 = llvm.ptrtoint %123 : !llvm.ptr<i32> to i64
    %125 = llvm.mlir.constant(16 : index) : i64
    %126 = llvm.add %124, %125  : i64
    %127 = llvm.call @malloc(%126) : (i64) -> !llvm.ptr<i8>
    %128 = llvm.bitcast %127 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %129 = llvm.ptrtoint %128 : !llvm.ptr<i32> to i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.sub %125, %130  : i64
    %132 = llvm.add %129, %131  : i64
    %133 = llvm.urem %132, %125  : i64
    %134 = llvm.sub %132, %133  : i64
    %135 = llvm.inttoptr %134 : i64 to !llvm.ptr<i32>
    %136 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %137 = llvm.insertvalue %128, %136[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %135, %137[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.insertvalue %139, %138[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %114, %140[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %115, %141[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %116, %142[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %117, %143[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %120, %144[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %119, %145[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %117, %146[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %118, %147[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%149 : i64)
  ^bb13(%152: i64):  // 2 preds: ^bb12, ^bb23
    %153 = llvm.icmp "slt" %152, %150 : i64
    llvm.cond_br %153, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%154 : i64)
  ^bb15(%157: i64):  // 2 preds: ^bb14, ^bb22
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%159 : i64)
  ^bb17(%162: i64):  // 2 preds: ^bb16, ^bb21
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%164 : i64)
  ^bb19(%167: i64):  // 2 preds: ^bb18, ^bb20
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %169 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mul %152, %170  : i64
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mul %157, %172  : i64
    %174 = llvm.add %171, %173  : i64
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mul %162, %175  : i64
    %177 = llvm.add %174, %176  : i64
    %178 = llvm.add %177, %167  : i64
    %179 = llvm.getelementptr %169[%178] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %180 = llvm.load %179 : !llvm.ptr<i32>
    %181 = llvm.extractvalue %148[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mul %152, %182  : i64
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mul %157, %184  : i64
    %186 = llvm.add %183, %185  : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mul %162, %187  : i64
    %189 = llvm.add %186, %188  : i64
    %190 = llvm.add %189, %167  : i64
    %191 = llvm.getelementptr %181[%190] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %180, %191 : !llvm.ptr<i32>
    %192 = llvm.add %167, %166  : i64
    llvm.br ^bb19(%192 : i64)
  ^bb21:  // pred: ^bb19
    %193 = llvm.add %162, %161  : i64
    llvm.br ^bb17(%193 : i64)
  ^bb22:  // pred: ^bb17
    %194 = llvm.add %157, %156  : i64
    llvm.br ^bb15(%194 : i64)
  ^bb23:  // pred: ^bb15
    %195 = llvm.add %152, %151  : i64
    llvm.br ^bb13(%195 : i64)
  ^bb24:  // pred: ^bb13
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mlir.constant(4 : index) : i64
    %204 = llvm.mlir.null : !llvm.ptr<f64>
    %205 = llvm.getelementptr %204[%203] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %206 = llvm.ptrtoint %205 : !llvm.ptr<f64> to i64
    %207 = llvm.mlir.constant(16 : index) : i64
    %208 = llvm.add %206, %207  : i64
    %209 = llvm.call @malloc(%208) : (i64) -> !llvm.ptr<i8>
    %210 = llvm.bitcast %209 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %211 = llvm.ptrtoint %210 : !llvm.ptr<f64> to i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.sub %207, %212  : i64
    %214 = llvm.add %211, %213  : i64
    %215 = llvm.urem %214, %207  : i64
    %216 = llvm.sub %214, %215  : i64
    %217 = llvm.inttoptr %216 : i64 to !llvm.ptr<f64>
    %218 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %219 = llvm.insertvalue %210, %218[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %217, %219[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.insertvalue %221, %220[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %196, %222[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.insertvalue %197, %223[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %198, %224[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %199, %225[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.insertvalue %202, %226[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %201, %227[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.insertvalue %199, %228[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.insertvalue %200, %229[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(2 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%231 : i64)
  ^bb25(%234: i64):  // 2 preds: ^bb24, ^bb35
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%236 : i64)
  ^bb27(%239: i64):  // 2 preds: ^bb26, ^bb34
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%241 : i64)
  ^bb29(%244: i64):  // 2 preds: ^bb28, ^bb33
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%246 : i64)
  ^bb31(%249: i64):  // 2 preds: ^bb30, ^bb32
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %251 = llvm.extractvalue %148[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mul %234, %252  : i64
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mul %239, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.mul %244, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.add %259, %249  : i64
    %261 = llvm.getelementptr %251[%260] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %262 = llvm.load %261 : !llvm.ptr<i32>
    %263 = llvm.sitofp %262 : i32 to f64
    %264 = llvm.extractvalue %230[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.mlir.constant(2 : index) : i64
    %266 = llvm.mul %234, %265  : i64
    %267 = llvm.mlir.constant(2 : index) : i64
    %268 = llvm.mul %239, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mul %244, %270  : i64
    %272 = llvm.add %269, %271  : i64
    %273 = llvm.add %272, %249  : i64
    %274 = llvm.getelementptr %264[%273] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %263, %274 : !llvm.ptr<f64>
    %275 = llvm.add %249, %248  : i64
    llvm.br ^bb31(%275 : i64)
  ^bb33:  // pred: ^bb31
    %276 = llvm.add %244, %243  : i64
    llvm.br ^bb29(%276 : i64)
  ^bb34:  // pred: ^bb29
    %277 = llvm.add %239, %238  : i64
    llvm.br ^bb27(%277 : i64)
  ^bb35:  // pred: ^bb27
    %278 = llvm.add %234, %233  : i64
    llvm.br ^bb25(%278 : i64)
  ^bb36:  // pred: ^bb25
    %279 = llvm.mlir.constant(2 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mlir.constant(4 : index) : i64
    %287 = llvm.mlir.null : !llvm.ptr<f64>
    %288 = llvm.getelementptr %287[%286] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %289 = llvm.ptrtoint %288 : !llvm.ptr<f64> to i64
    %290 = llvm.mlir.constant(16 : index) : i64
    %291 = llvm.add %289, %290  : i64
    %292 = llvm.call @malloc(%291) : (i64) -> !llvm.ptr<i8>
    %293 = llvm.bitcast %292 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %294 = llvm.ptrtoint %293 : !llvm.ptr<f64> to i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.sub %290, %295  : i64
    %297 = llvm.add %294, %296  : i64
    %298 = llvm.urem %297, %290  : i64
    %299 = llvm.sub %297, %298  : i64
    %300 = llvm.inttoptr %299 : i64 to !llvm.ptr<f64>
    %301 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %302 = llvm.insertvalue %293, %301[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %300, %302[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.insertvalue %304, %303[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %279, %305[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %280, %306[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %281, %307[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %282, %308[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.insertvalue %285, %309[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %284, %310[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %282, %311[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %283, %312[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%314 : i64)
  ^bb37(%317: i64):  // 2 preds: ^bb36, ^bb47
    %318 = llvm.icmp "slt" %317, %315 : i64
    llvm.cond_br %318, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%319 : i64)
  ^bb39(%322: i64):  // 2 preds: ^bb38, ^bb46
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%324 : i64)
  ^bb41(%327: i64):  // 2 preds: ^bb40, ^bb45
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%329 : i64)
  ^bb43(%332: i64):  // 2 preds: ^bb42, ^bb44
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %334 = llvm.extractvalue %230[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mul %317, %335  : i64
    %337 = llvm.mlir.constant(2 : index) : i64
    %338 = llvm.mul %322, %337  : i64
    %339 = llvm.add %336, %338  : i64
    %340 = llvm.mlir.constant(2 : index) : i64
    %341 = llvm.mul %327, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.add %342, %332  : i64
    %344 = llvm.getelementptr %334[%343] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %345 = llvm.load %344 : !llvm.ptr<f64>
    %346 = llvm.fcmp "oge" %345, %4 : f64
    %347 = llvm.select %346, %345, %4 : i1, f64
    %348 = llvm.extractvalue %313[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mul %317, %349  : i64
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mul %322, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mul %327, %354  : i64
    %356 = llvm.add %353, %355  : i64
    %357 = llvm.add %356, %332  : i64
    %358 = llvm.getelementptr %348[%357] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %347, %358 : !llvm.ptr<f64>
    %359 = llvm.add %332, %331  : i64
    llvm.br ^bb43(%359 : i64)
  ^bb45:  // pred: ^bb43
    %360 = llvm.add %327, %326  : i64
    llvm.br ^bb41(%360 : i64)
  ^bb46:  // pred: ^bb41
    %361 = llvm.add %322, %321  : i64
    llvm.br ^bb39(%361 : i64)
  ^bb47:  // pred: ^bb39
    %362 = llvm.add %317, %316  : i64
    llvm.br ^bb37(%362 : i64)
  ^bb48:  // pred: ^bb37
    llvm.return %313 : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.call @main_graph(%1, %2, %3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %4, %arg0 : !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %13, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %16 = llvm.load %2 : !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>
    %17 = llvm.mlir.constant(1 : i64) : i64
    %18 = llvm.mlir.constant(8 : i64) : i64
    %19 = llvm.call @malloc(%18) : (i64) -> !llvm.ptr<i8>
    %20 = llvm.bitcast %19 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %21 = llvm.mlir.constant(4 : i64) : i64
    %22 = llvm.call @omTensorCreateUntyped(%21) : (i64) -> !llvm.ptr<i8>
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.extractvalue %16[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.bitcast %24 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %26 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.bitcast %26 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%22, %23, %25, %27) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %28 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%22, %28) : (!llvm.ptr<i8>, i64) -> ()
    %29 = llvm.call @omTensorGetShape(%22) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %30 = llvm.call @omTensorGetStrides(%22) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %31 = llvm.mlir.constant(0 : i64) : i64
    %32 = llvm.extractvalue %16[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.getelementptr %29[%31] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %32, %33 : !llvm.ptr<i64>
    %34 = llvm.extractvalue %16[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.getelementptr %30[%31] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %34, %35 : !llvm.ptr<i64>
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.extractvalue %16[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.getelementptr %29[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %37, %38 : !llvm.ptr<i64>
    %39 = llvm.extractvalue %16[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.getelementptr %30[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %39, %40 : !llvm.ptr<i64>
    %41 = llvm.mlir.constant(2 : i64) : i64
    %42 = llvm.extractvalue %16[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.getelementptr %29[%41] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %42, %43 : !llvm.ptr<i64>
    %44 = llvm.extractvalue %16[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.getelementptr %30[%41] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %44, %45 : !llvm.ptr<i64>
    %46 = llvm.mlir.constant(3 : i64) : i64
    %47 = llvm.extractvalue %16[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.getelementptr %29[%46] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %47, %48 : !llvm.ptr<i64>
    %49 = llvm.extractvalue %16[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.getelementptr %30[%46] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %49, %50 : !llvm.ptr<i64>
    %51 = llvm.mlir.constant(0 : i64) : i64
    %52 = llvm.getelementptr %20[%51] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %22, %52 : !llvm.ptr<ptr<i8>>
    %53 = llvm.call @omTensorListCreate(%20, %17, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %53 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<59 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<59 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

