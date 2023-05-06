module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v1_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(0xFFF0000000000000 : f64) : f64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %23 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %25 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.null : !llvm.ptr<i32>
    %36 = llvm.getelementptr %35[%30] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %37 = llvm.ptrtoint %36 : !llvm.ptr<i32> to i64
    %38 = llvm.mlir.constant(16 : index) : i64
    %39 = llvm.add %37, %38  : i64
    %40 = llvm.call @malloc(%39) : (i64) -> !llvm.ptr<i8>
    %41 = llvm.bitcast %40 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %42 = llvm.ptrtoint %41 : !llvm.ptr<i32> to i64
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.sub %38, %43  : i64
    %45 = llvm.add %42, %44  : i64
    %46 = llvm.urem %45, %38  : i64
    %47 = llvm.sub %45, %46  : i64
    %48 = llvm.inttoptr %47 : i64 to !llvm.ptr<i32>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %50 = llvm.insertvalue %41, %49[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %30, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %31, %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %32, %55[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %33, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %31, %57[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %32, %58[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %33, %59[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %34, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%62 : i64)
  ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb11
    %66 = llvm.icmp "slt" %65, %63 : i64
    llvm.cond_br %66, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%67 : i64)
  ^bb3(%70: i64):  // 2 preds: ^bb2, ^bb10
    %71 = llvm.icmp "slt" %70, %68 : i64
    llvm.cond_br %71, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%72 : i64)
  ^bb5(%75: i64):  // 2 preds: ^bb4, ^bb9
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%77 : i64)
  ^bb7(%80: i64):  // 2 preds: ^bb6, ^bb8
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %82 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.add %65, %70  : i64
    %84 = llvm.add %83, %75  : i64
    %85 = llvm.add %84, %80  : i64
    %86 = llvm.getelementptr %82[%85] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %87 = llvm.load %86 : !llvm.ptr<i32>
    %88 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %89 = llvm.load %88 : !llvm.ptr<i32>
    %90 = llvm.icmp "slt" %87, %89 : i32
    %91 = llvm.select %90, %89, %87 : i1, i32
    %92 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %93 = llvm.load %92 : !llvm.ptr<i32>
    %94 = llvm.icmp "slt" %91, %93 : i32
    %95 = llvm.select %94, %91, %93 : i1, i32
    %96 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.add %65, %70  : i64
    %98 = llvm.add %97, %75  : i64
    %99 = llvm.add %98, %80  : i64
    %100 = llvm.getelementptr %96[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %95, %100 : !llvm.ptr<i32>
    %101 = llvm.add %80, %79  : i64
    llvm.br ^bb7(%101 : i64)
  ^bb9:  // pred: ^bb7
    %102 = llvm.add %75, %74  : i64
    llvm.br ^bb5(%102 : i64)
  ^bb10:  // pred: ^bb5
    %103 = llvm.add %70, %69  : i64
    llvm.br ^bb3(%103 : i64)
  ^bb11:  // pred: ^bb3
    %104 = llvm.add %65, %64  : i64
    llvm.br ^bb1(%104 : i64)
  ^bb12:  // pred: ^bb1
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.null : !llvm.ptr<f64>
    %111 = llvm.getelementptr %110[%105] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %112 = llvm.ptrtoint %111 : !llvm.ptr<f64> to i64
    %113 = llvm.mlir.constant(16 : index) : i64
    %114 = llvm.add %112, %113  : i64
    %115 = llvm.call @malloc(%114) : (i64) -> !llvm.ptr<i8>
    %116 = llvm.bitcast %115 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %117 = llvm.ptrtoint %116 : !llvm.ptr<f64> to i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.sub %113, %118  : i64
    %120 = llvm.add %117, %119  : i64
    %121 = llvm.urem %120, %113  : i64
    %122 = llvm.sub %120, %121  : i64
    %123 = llvm.inttoptr %122 : i64 to !llvm.ptr<f64>
    %124 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %125 = llvm.insertvalue %116, %124[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %123, %125[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.insertvalue %127, %126[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %105, %128[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %106, %129[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %107, %130[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %108, %131[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %106, %132[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %107, %133[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %108, %134[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %109, %135[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%137 : i64)
  ^bb13(%140: i64):  // 2 preds: ^bb12, ^bb23
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%142 : i64)
  ^bb15(%145: i64):  // 2 preds: ^bb14, ^bb22
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%147 : i64)
  ^bb17(%150: i64):  // 2 preds: ^bb16, ^bb21
    %151 = llvm.icmp "slt" %150, %148 : i64
    llvm.cond_br %151, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%152 : i64)
  ^bb19(%155: i64):  // 2 preds: ^bb18, ^bb20
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %157 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.add %140, %145  : i64
    %159 = llvm.add %158, %150  : i64
    %160 = llvm.add %159, %155  : i64
    %161 = llvm.getelementptr %157[%160] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %162 = llvm.load %161 : !llvm.ptr<i32>
    %163 = llvm.sitofp %162 : i32 to f64
    %164 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.add %140, %145  : i64
    %166 = llvm.add %165, %150  : i64
    %167 = llvm.add %166, %155  : i64
    %168 = llvm.getelementptr %164[%167] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %163, %168 : !llvm.ptr<f64>
    %169 = llvm.add %155, %154  : i64
    llvm.br ^bb19(%169 : i64)
  ^bb21:  // pred: ^bb19
    %170 = llvm.add %150, %149  : i64
    llvm.br ^bb17(%170 : i64)
  ^bb22:  // pred: ^bb17
    %171 = llvm.add %145, %144  : i64
    llvm.br ^bb15(%171 : i64)
  ^bb23:  // pred: ^bb15
    %172 = llvm.add %140, %139  : i64
    llvm.br ^bb13(%172 : i64)
  ^bb24:  // pred: ^bb13
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.null : !llvm.ptr<f64>
    %179 = llvm.getelementptr %178[%173] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %180 = llvm.ptrtoint %179 : !llvm.ptr<f64> to i64
    %181 = llvm.mlir.constant(16 : index) : i64
    %182 = llvm.add %180, %181  : i64
    %183 = llvm.call @malloc(%182) : (i64) -> !llvm.ptr<i8>
    %184 = llvm.bitcast %183 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %185 = llvm.ptrtoint %184 : !llvm.ptr<f64> to i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.sub %181, %186  : i64
    %188 = llvm.add %185, %187  : i64
    %189 = llvm.urem %188, %181  : i64
    %190 = llvm.sub %188, %189  : i64
    %191 = llvm.inttoptr %190 : i64 to !llvm.ptr<f64>
    %192 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %193 = llvm.insertvalue %184, %192[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %191, %193[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.insertvalue %195, %194[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %173, %196[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %174, %197[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %175, %198[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %176, %199[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %174, %200[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.insertvalue %175, %201[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.insertvalue %176, %202[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %177, %203[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.null : !llvm.ptr<f64>
    %207 = llvm.getelementptr %206[%205] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %208 = llvm.ptrtoint %207 : !llvm.ptr<f64> to i64
    %209 = llvm.alloca %208 x f64 : (i64) -> !llvm.ptr<f64>
    %210 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64)>
    %211 = llvm.insertvalue %209, %210[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %212 = llvm.insertvalue %209, %211[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.insertvalue %213, %212[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%215 : i64)
  ^bb25(%218: i64):  // 2 preds: ^bb24, ^bb41
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb26, ^bb42
  ^bb26:  // pred: ^bb25
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%220 : i64)
  ^bb27(%223: i64):  // 2 preds: ^bb26, ^bb40
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb28, ^bb41
  ^bb28:  // pred: ^bb27
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%225 : i64)
  ^bb29(%228: i64):  // 2 preds: ^bb28, ^bb39
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb30, ^bb40
  ^bb30:  // pred: ^bb29
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%230 : i64)
  ^bb31(%233: i64):  // 2 preds: ^bb30, ^bb38
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb32, ^bb39
  ^bb32:  // pred: ^bb31
    %235 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    llvm.store %13, %235 : !llvm.ptr<f64>
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.icmp "slt" %228, %236 : i64
    %238 = llvm.select %237, %236, %228 : i1, i64
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.icmp "slt" %233, %239 : i64
    %241 = llvm.select %240, %239, %233 : i1, i64
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(-1 : index) : i64
    %245 = llvm.mul %228, %244  : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.add %245, %246  : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.add %228, %248  : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.icmp "sgt" %247, %243 : i64
    %252 = llvm.select %251, %243, %247 : i1, i64
    %253 = llvm.icmp "slt" %252, %249 : i64
    %254 = llvm.select %253, %252, %249 : i1, i64
    %255 = llvm.icmp "slt" %254, %250 : i64
    %256 = llvm.select %255, %254, %250 : i1, i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%242 : i64)
  ^bb33(%258: i64):  // 2 preds: ^bb32, ^bb37
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb34, ^bb38
  ^bb34:  // pred: ^bb33
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.constant(-1 : index) : i64
    %263 = llvm.mul %233, %262  : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.add %263, %264  : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.add %233, %266  : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.icmp "sgt" %265, %261 : i64
    %270 = llvm.select %269, %261, %265 : i1, i64
    %271 = llvm.icmp "slt" %270, %267 : i64
    %272 = llvm.select %271, %270, %267 : i1, i64
    %273 = llvm.icmp "slt" %272, %268 : i64
    %274 = llvm.select %273, %272, %268 : i1, i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%260 : i64)
  ^bb35(%276: i64):  // 2 preds: ^bb34, ^bb36
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %278 = llvm.add %258, %238  : i64
    %279 = llvm.add %276, %241  : i64
    %280 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.add %218, %223  : i64
    %282 = llvm.add %281, %278  : i64
    %283 = llvm.add %282, %279  : i64
    %284 = llvm.getelementptr %280[%283] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %285 = llvm.load %284 : !llvm.ptr<f64>
    %286 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %287 = llvm.load %286 : !llvm.ptr<f64>
    %288 = llvm.fcmp "ogt" %287, %285 : f64
    %289 = llvm.select %288, %287, %285 : i1, f64
    %290 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    llvm.store %289, %290 : !llvm.ptr<f64>
    %291 = llvm.add %276, %275  : i64
    llvm.br ^bb35(%291 : i64)
  ^bb37:  // pred: ^bb35
    %292 = llvm.add %258, %257  : i64
    llvm.br ^bb33(%292 : i64)
  ^bb38:  // pred: ^bb33
    %293 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %294 = llvm.load %293 : !llvm.ptr<f64>
    %295 = llvm.extractvalue %204[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.add %218, %223  : i64
    %297 = llvm.add %296, %228  : i64
    %298 = llvm.add %297, %233  : i64
    %299 = llvm.getelementptr %295[%298] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %294, %299 : !llvm.ptr<f64>
    %300 = llvm.add %233, %232  : i64
    llvm.br ^bb31(%300 : i64)
  ^bb39:  // pred: ^bb31
    %301 = llvm.add %228, %227  : i64
    llvm.br ^bb29(%301 : i64)
  ^bb40:  // pred: ^bb29
    %302 = llvm.add %223, %222  : i64
    llvm.br ^bb27(%302 : i64)
  ^bb41:  // pred: ^bb27
    %303 = llvm.add %218, %217  : i64
    llvm.br ^bb25(%303 : i64)
  ^bb42:  // pred: ^bb25
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.mlir.null : !llvm.ptr<i32>
    %310 = llvm.getelementptr %309[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<i32> to i64
    %312 = llvm.mlir.constant(16 : index) : i64
    %313 = llvm.add %311, %312  : i64
    %314 = llvm.call @malloc(%313) : (i64) -> !llvm.ptr<i8>
    %315 = llvm.bitcast %314 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %316 = llvm.ptrtoint %315 : !llvm.ptr<i32> to i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.sub %312, %317  : i64
    %319 = llvm.add %316, %318  : i64
    %320 = llvm.urem %319, %312  : i64
    %321 = llvm.sub %319, %320  : i64
    %322 = llvm.inttoptr %321 : i64 to !llvm.ptr<i32>
    %323 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %324 = llvm.insertvalue %315, %323[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %322, %324[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.insertvalue %326, %325[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %304, %327[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %305, %328[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %306, %329[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %307, %330[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %305, %331[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.insertvalue %306, %332[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.insertvalue %307, %333[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %308, %334[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%336 : i64)
  ^bb43(%339: i64):  // 2 preds: ^bb42, ^bb53
    %340 = llvm.icmp "slt" %339, %337 : i64
    llvm.cond_br %340, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%341 : i64)
  ^bb45(%344: i64):  // 2 preds: ^bb44, ^bb52
    %345 = llvm.icmp "slt" %344, %342 : i64
    llvm.cond_br %345, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%346 : i64)
  ^bb47(%349: i64):  // 2 preds: ^bb46, ^bb51
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%351 : i64)
  ^bb49(%354: i64):  // 2 preds: ^bb48, ^bb50
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %356 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.add %339, %344  : i64
    %358 = llvm.add %357, %349  : i64
    %359 = llvm.add %358, %354  : i64
    %360 = llvm.getelementptr %356[%359] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %361 = llvm.load %360 : !llvm.ptr<i32>
    %362 = llvm.sub %12, %361  : i32
    %363 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.add %339, %344  : i64
    %365 = llvm.add %364, %349  : i64
    %366 = llvm.add %365, %354  : i64
    %367 = llvm.getelementptr %363[%366] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %362, %367 : !llvm.ptr<i32>
    %368 = llvm.add %354, %353  : i64
    llvm.br ^bb49(%368 : i64)
  ^bb51:  // pred: ^bb49
    %369 = llvm.add %349, %348  : i64
    llvm.br ^bb47(%369 : i64)
  ^bb52:  // pred: ^bb47
    %370 = llvm.add %344, %343  : i64
    llvm.br ^bb45(%370 : i64)
  ^bb53:  // pred: ^bb45
    %371 = llvm.add %339, %338  : i64
    llvm.br ^bb43(%371 : i64)
  ^bb54:  // pred: ^bb43
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.null : !llvm.ptr<i1>
    %378 = llvm.getelementptr %377[%372] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %379 = llvm.ptrtoint %378 : !llvm.ptr<i1> to i64
    %380 = llvm.mlir.constant(16 : index) : i64
    %381 = llvm.add %379, %380  : i64
    %382 = llvm.call @malloc(%381) : (i64) -> !llvm.ptr<i8>
    %383 = llvm.bitcast %382 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %384 = llvm.ptrtoint %383 : !llvm.ptr<i1> to i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.sub %380, %385  : i64
    %387 = llvm.add %384, %386  : i64
    %388 = llvm.urem %387, %380  : i64
    %389 = llvm.sub %387, %388  : i64
    %390 = llvm.inttoptr %389 : i64 to !llvm.ptr<i1>
    %391 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %392 = llvm.insertvalue %383, %391[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %390, %392[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.insertvalue %394, %393[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %372, %395[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %373, %396[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %374, %397[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %375, %398[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.insertvalue %373, %399[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %374, %400[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %375, %401[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %376, %402[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.mlir.constant(0 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%404 : i64)
  ^bb55(%407: i64):  // 2 preds: ^bb54, ^bb65
    %408 = llvm.icmp "slt" %407, %405 : i64
    llvm.cond_br %408, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%409 : i64)
  ^bb57(%412: i64):  // 2 preds: ^bb56, ^bb64
    %413 = llvm.icmp "slt" %412, %410 : i64
    llvm.cond_br %413, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%414 : i64)
  ^bb59(%417: i64):  // 2 preds: ^bb58, ^bb63
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%419 : i64)
  ^bb61(%422: i64):  // 2 preds: ^bb60, ^bb62
    %423 = llvm.icmp "slt" %422, %420 : i64
    llvm.cond_br %423, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %424 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.add %407, %412  : i64
    %426 = llvm.add %425, %417  : i64
    %427 = llvm.add %426, %422  : i64
    %428 = llvm.getelementptr %424[%427] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %429 = llvm.load %428 : !llvm.ptr<i32>
    %430 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.add %407, %412  : i64
    %432 = llvm.add %431, %417  : i64
    %433 = llvm.add %432, %422  : i64
    %434 = llvm.getelementptr %430[%433] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %435 = llvm.load %434 : !llvm.ptr<i32>
    %436 = llvm.icmp "sgt" %429, %435 : i32
    %437 = llvm.extractvalue %403[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.add %407, %412  : i64
    %439 = llvm.add %438, %417  : i64
    %440 = llvm.add %439, %422  : i64
    %441 = llvm.getelementptr %437[%440] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %436, %441 : !llvm.ptr<i1>
    %442 = llvm.add %422, %421  : i64
    llvm.br ^bb61(%442 : i64)
  ^bb63:  // pred: ^bb61
    %443 = llvm.add %417, %416  : i64
    llvm.br ^bb59(%443 : i64)
  ^bb64:  // pred: ^bb59
    %444 = llvm.add %412, %411  : i64
    llvm.br ^bb57(%444 : i64)
  ^bb65:  // pred: ^bb57
    %445 = llvm.add %407, %406  : i64
    llvm.br ^bb55(%445 : i64)
  ^bb66:  // pred: ^bb55
    %446 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %447 = llvm.insertvalue %204, %446[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %448 = llvm.insertvalue %403, %447[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %448 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v1_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %92[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.getelementptr %50[%113] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %114 : !llvm.ptr<ptr<i8>>
    %115 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %115 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

